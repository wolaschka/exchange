#!/usr/bin/env python3
"""
Algo Internal Documentation Crawler

Crawls Algo internal documentation (MkDocs Material site behind Keycloak OIDC),
converts HTML pages to markdown .md files, downloads images, rewrites links.

Usage:
    # Cookie auth (recommended - works with Keycloak/OIDC):
    python algo-docs-crawler.py --base-url https://server:port/docs/index.html --cookies "cookie_string"

    # With custom output directory:
    python algo-docs-crawler.py --base-url https://server:port/docs/index.html --cookies "cookie_string" --output-dir ../docs/algo-reference

    # NTLM auth (legacy, does NOT work with Keycloak/OIDC):
    python algo-docs-crawler.py --base-url http://server:port/docs/index.htm

How to get cookies:
    1. Open the docs URL in your browser (Chrome/Edge)
    2. Press F12 to open DevTools -> Network tab
    3. Refresh the page
    4. Click the first request to index.html (status 200)
    5. In Headers tab, find "Cookie" under Request Headers
    6. Copy the entire cookie value string

Dependencies:
    pip install requests beautifulsoup4 html2text

Note: For NTLM auth (old servers without OIDC), install: pip install requests-ntlm
"""

import argparse
import logging
import os
import re
import sys
from pathlib import Path
from urllib.parse import urljoin, urlparse, unquote

try:
    import requests
except ImportError:
    print("ERROR: 'requests' package required. Install: pip install requests")
    sys.exit(1)

try:
    from bs4 import BeautifulSoup
except ImportError:
    print("ERROR: 'beautifulsoup4' package required. Install: pip install beautifulsoup4")
    sys.exit(1)

try:
    import html2text
except ImportError:
    print("ERROR: 'html2text' package required. Install: pip install html2text")
    sys.exit(1)


IMAGE_EXTENSIONS = {
    '.png', '.jpg', '.jpeg', '.gif', '.bmp', '.ico', '.svg',
}

SKIP_EXTENSIONS = {
    '.pdf', '.doc', '.docx', '.xls', '.xlsx', '.ppt', '.pptx',
    '.zip', '.tar', '.gz', '.rar', '.7z',
    '.exe', '.dll', '.so', '.bin',
    '.mp3', '.mp4', '.avi', '.mov', '.wav',
    '.css', '.js',
}


def setup_logging(verbose=False):
    level = logging.DEBUG if verbose else logging.INFO
    logging.basicConfig(
        level=level,
        format='%(asctime)s [%(levelname)s] %(message)s',
        datefmt='%H:%M:%S',
    )


def create_session(cookies=None, use_ntlm=True):
    """Create a requests session with authentication.

    Args:
        cookies: Cookie header string from browser (for Keycloak/OIDC auth)
        use_ntlm: Try NTLM auth if no cookies provided
    """
    session = requests.Session()

    if cookies:
        # Parse cookie string and add to session
        for cookie_pair in cookies.split(';'):
            cookie_pair = cookie_pair.strip()
            if '=' in cookie_pair:
                name, value = cookie_pair.split('=', 1)
                session.cookies.set(name.strip(), value.strip())
        logging.info(f"Cookie authentication enabled ({len(session.cookies)} cookies loaded)")
    elif use_ntlm:
        try:
            from requests_ntlm import HttpNtlmAuth
            # Use empty credentials to trigger SSPI/negotiate (Windows session)
            session.auth = HttpNtlmAuth('', '')
            logging.info("NTLM authentication enabled (Windows session credentials)")
        except ImportError:
            logging.warning(
                "requests-ntlm not installed. Trying without auth. "
                "Install: pip install requests-ntlm"
            )

    session.headers.update({
        'User-Agent': 'AlgoDocsCrawler/1.0',
    })
    session.verify = False  # Internal server, self-signed certs common

    return session


def is_within_scope(url, base_scope):
    """Check if URL is within the crawl scope (same server, under /docs/)."""
    parsed = urlparse(url)
    base_parsed = urlparse(base_scope)

    if parsed.netloc and parsed.netloc != base_parsed.netloc:
        return False

    path = parsed.path.lower()
    base_path = base_parsed.path.lower()

    # Must be under the same docs directory
    base_dir = base_path.rsplit('/', 1)[0] + '/'
    return path.startswith(base_dir)


def is_image(url):
    """Check if URL points to an image file."""
    parsed = urlparse(url)
    ext = Path(parsed.path).suffix.lower()
    return ext in IMAGE_EXTENSIONS


def is_skippable(url):
    """Check if URL points to a file we should skip (non-HTML, non-image)."""
    parsed = urlparse(url)
    ext = Path(parsed.path).suffix.lower()
    return ext in SKIP_EXTENSIONS


def url_to_filepath(url, base_url, output_dir):
    """Convert a URL to a local file path in the output directory."""
    parsed = urlparse(url)
    base_parsed = urlparse(base_url)

    # Get relative path from base docs directory
    base_dir = base_parsed.path.rsplit('/', 1)[0]
    rel_path = parsed.path
    if rel_path.startswith(base_dir):
        rel_path = rel_path[len(base_dir):]
    rel_path = rel_path.lstrip('/')

    # Decode URL encoding
    rel_path = unquote(rel_path)

    # Replace .htm/.html extension with .md
    rel_path = re.sub(r'\.(html?)$', '.md', rel_path, flags=re.IGNORECASE)

    # If no extension, add .md
    if not Path(rel_path).suffix:
        rel_path = rel_path.rstrip('/') + '/index.md'

    return os.path.join(output_dir, rel_path)


def extract_content(html_content):
    """Extract main content from MkDocs Material page, stripping navigation/chrome."""
    soup = BeautifulSoup(html_content, 'html.parser')

    # MkDocs Material: main content is in <article class="md-content__inner md-typeset">
    article = soup.find('article', class_='md-content__inner')
    if article:
        return str(article)

    # Fallback: try <article> tag
    article = soup.find('article')
    if article:
        return str(article)

    # Fallback: try <div class="md-content">
    content = soup.find('div', class_='md-content')
    if content:
        return str(content)

    # No MkDocs structure found, return full HTML
    return html_content


def rewrite_links(markdown):
    """Rewrite .html links to .md so they work in GitHub markdown viewer."""
    # Match markdown links: [text](<file.html>) or [text](file.html)
    # Preserve anchors: file.html#section → file.md#section
    markdown = re.sub(
        r'(\[.*?\]\(<?)([^)>#]+?)\.html?(#[^)>]*)?(>?\))',
        r'\1\2.md\3\4',
        markdown
    )
    return markdown


def convert_html_to_markdown(html_content, url):
    """Convert HTML content to markdown-formatted text."""
    # Extract only page content (strip MkDocs nav/header/footer)
    content_html = extract_content(html_content)

    converter = html2text.HTML2Text()
    converter.body_width = 0  # No line wrapping
    converter.protect_links = True
    converter.unicode_snob = True
    converter.skip_internal_links = False
    converter.inline_links = True
    converter.wrap_links = False

    markdown = converter.handle(content_html)

    # Rewrite .html links to .md
    markdown = rewrite_links(markdown)

    return markdown


def extract_links(html_content, current_url):
    """Extract all links from HTML content."""
    soup = BeautifulSoup(html_content, 'html.parser')
    links = set()

    for tag in soup.find_all('a', href=True):
        href = tag['href']
        # Skip anchors, javascript, mailto
        if href.startswith(('#', 'javascript:', 'mailto:')):
            continue
        # Resolve relative URLs
        absolute_url = urljoin(current_url, href)
        # Remove fragment
        absolute_url = absolute_url.split('#')[0]
        if absolute_url:
            links.add(absolute_url)

    # Also check frames/iframes (common in old documentation)
    for tag in soup.find_all(['frame', 'iframe'], src=True):
        src = tag['src']
        if not src.startswith(('#', 'javascript:')):
            absolute_url = urljoin(current_url, src)
            absolute_url = absolute_url.split('#')[0]
            if absolute_url:
                links.add(absolute_url)

    return links


def download_image(url, base_url, output_dir, session):
    """Download an image file and save it to the output directory."""
    try:
        response = session.get(url, timeout=30)
        response.raise_for_status()
    except requests.RequestException as e:
        logging.error(f"Failed to download image {url}: {e}")
        return False

    # Build output path preserving relative directory structure
    parsed = urlparse(url)
    base_parsed = urlparse(base_url)
    base_dir = base_parsed.path.rsplit('/', 1)[0]
    rel_path = parsed.path
    if rel_path.startswith(base_dir):
        rel_path = rel_path[len(base_dir):]
    rel_path = unquote(rel_path.lstrip('/'))

    filepath = os.path.join(output_dir, rel_path)
    os.makedirs(os.path.dirname(filepath), exist_ok=True)

    with open(filepath, 'wb') as f:
        f.write(response.content)

    logging.info(f"  Image: {filepath}")
    return True


def extract_image_urls(html_content, current_url):
    """Extract all image URLs from HTML content."""
    soup = BeautifulSoup(html_content, 'html.parser')
    urls = set()
    for tag in soup.find_all('img', src=True):
        src = tag['src']
        if not src.startswith(('data:', 'javascript:')):
            absolute_url = urljoin(current_url, src)
            urls.add(absolute_url)
    return urls


def crawl(base_url, output_dir, session, max_pages=500):
    """Crawl documentation starting from base_url."""
    visited = set()
    downloaded_images = set()
    queue = [base_url]
    saved_count = 0
    image_count = 0
    skipped_count = 0
    error_count = 0

    base_scope = base_url

    logging.info(f"Starting crawl from: {base_url}")
    logging.info(f"Output directory: {output_dir}")
    logging.info(f"Max pages: {max_pages}")

    while queue and len(visited) < max_pages:
        url = queue.pop(0)

        if url in visited:
            continue
        visited.add(url)

        if not is_within_scope(url, base_scope):
            logging.debug(f"Out of scope, skipping: {url}")
            skipped_count += 1
            continue

        if is_skippable(url):
            logging.debug(f"Skippable file, skipping: {url}")
            skipped_count += 1
            continue

        if is_image(url):
            # Images are downloaded when found in page content, not from queue
            continue

        logging.info(f"[{len(visited)}/{max_pages}] Fetching: {url}")

        try:
            response = session.get(url, timeout=30)
            response.raise_for_status()
        except requests.RequestException as e:
            logging.error(f"Failed to fetch {url}: {e}")
            error_count += 1
            continue

        # Detect OIDC redirect (means cookies expired or missing)
        if response.url and urlparse(response.url).netloc != urlparse(url).netloc:
            if len(visited) == 1:  # First page = auth problem
                logging.error(
                    f"Redirected to different host: {response.url}\n"
                    "  This likely means Keycloak/OIDC authentication failed.\n"
                    "  Use --cookies with browser session cookies.\n"
                    "  See: python algo-docs-crawler.py --help"
                )
                return
            else:
                logging.warning(f"Redirected to {response.url}, skipping: {url}")
                skipped_count += 1
                continue

        content_type = response.headers.get('Content-Type', '')
        if 'text/html' not in content_type and 'text/htm' not in content_type:
            logging.debug(f"Not HTML ({content_type}), skipping: {url}")
            skipped_count += 1
            continue

        # Force UTF-8 decoding — servers often declare wrong charset in headers
        response.encoding = 'utf-8'
        html_content = response.text

        # Extract and queue new links
        links = extract_links(html_content, url)
        for link in links:
            if link not in visited:
                queue.append(link)

        # Download images referenced in this page
        for img_url in extract_image_urls(html_content, url):
            if img_url not in downloaded_images and is_within_scope(img_url, base_scope):
                downloaded_images.add(img_url)
                if download_image(img_url, base_url, output_dir, session):
                    image_count += 1

        # Convert and save
        markdown_content = convert_html_to_markdown(html_content, url)
        filepath = url_to_filepath(url, base_url, output_dir)

        # Create directory structure
        os.makedirs(os.path.dirname(filepath), exist_ok=True)

        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(markdown_content)

        saved_count += 1
        logging.info(f"  Saved: {filepath}")

    logging.info("=" * 60)
    logging.info(f"Crawl complete.")
    logging.info(f"  Pages visited: {len(visited)}")
    logging.info(f"  Pages saved:   {saved_count}")
    logging.info(f"  Images:        {image_count}")
    logging.info(f"  Skipped:       {skipped_count}")
    logging.info(f"  Errors:        {error_count}")
    logging.info("=" * 60)


def main():
    parser = argparse.ArgumentParser(
        description='Crawl Algo internal documentation and convert to markdown .md files with images',
    )
    parser.add_argument(
        '--base-url',
        required=True,
        help='Base URL of the documentation index (e.g., http://server:port/docs/index.htm)',
    )
    parser.add_argument(
        '--output-dir',
        default=os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'docs', 'algo-reference'),
        help='Output directory for converted files (default: ../docs/algo-reference/)',
    )
    parser.add_argument(
        '--max-pages',
        type=int,
        default=500,
        help='Maximum number of pages to crawl (default: 500)',
    )
    parser.add_argument(
        '--cookies',
        help='Cookie header string from browser for Keycloak/OIDC auth (see --help for instructions)',
    )
    parser.add_argument(
        '--cookie-file',
        help='Path to file containing cookie string (alternative to --cookies for long values)',
    )
    parser.add_argument(
        '--no-auth',
        action='store_true',
        help='Disable NTLM authentication',
    )
    parser.add_argument(
        '--verbose',
        action='store_true',
        help='Enable debug logging',
    )

    args = parser.parse_args()

    setup_logging(args.verbose)

    # Suppress InsecureRequestWarning for self-signed certs
    import urllib3
    urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

    # Load cookies from file if specified
    cookies = args.cookies
    if args.cookie_file:
        with open(args.cookie_file, 'r') as f:
            cookies = f.read().strip()
        logging.info(f"Loaded cookies from: {args.cookie_file}")

    session = create_session(cookies=cookies, use_ntlm=not args.no_auth)
    crawl(args.base_url, args.output_dir, session, args.max_pages)


if __name__ == '__main__':
    main()

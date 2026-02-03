# exchange - Claude Development Guide

## Project Overview

Algo database schema reference repository. Contains exported Oracle database schema documentation and schema export scripts. Read-only reference for cross-project analysis.

**Stack**: Documentation (Markdown), Perl (schema export scripts)

## Git Commit Guidelines

**NO AI/Claude references in commits** - Professional codebase only.

**Format:** `type: subject`

Types: `add`, `update`, `fix`, `docs`, `chore`

## Context Management & Cleanup

### Cronjob: Weekly Context Cleanup

A crontab entry runs every Monday at 13:00 to keep Claude context lean:

```crontab
0 13 * * 1 /Users/pewo/workspace/TIMS/bin/utilities/claudeContextCleanup.sh --all >> /tmp/claude_cleanup.log 2>&1
```

**Script location**: `../tims/bin/utilities/claudeContextCleanup.sh`

**What it cleans** (global — applies to all projects):
- `~/.cache/claude` — CLI cache (files older than 7 days)
- `~/.claude/debug` — debug logs (files older than 7 days)
- `~/.claude/shell-snapshots` — shell snapshots (files older than 7 days)
- `~/.claude/history.jsonl` — truncated to last 1000 entries if >10MB
- `~/.cache/context7-mcp` — Context7 MCP cache
- `/tmp/tims*.log`, `/tmp/claude*.log` — temp logs older than 7 days
- `/tmp/*.csv`, `/tmp/*.tsv` — temp exports older than 14 days

**Manual usage**:
```bash
../tims/bin/utilities/claudeContextCleanup.sh --all
```

### Best Practices for Longer Conversations

- Start fresh sessions for unrelated topics
- Avoid reading files >10KB repeatedly — read once, reference by path
- Use targeted reads instead of full file reads for large files
- Break large tasks into smaller sessions when possible
- Keep context under ~500KB for safety (200k tokens = 800KB text)

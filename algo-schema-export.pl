#!/usr/bin/perl
#
# algo-schema-export.pl — Export Algo Oracle DB schema to markdown files
#
# Runs inside UCB_ALGO517 project (Bin/batch/) using AlgoEnvironment for
# DB credentials. No manual user/password/SID needed.
#
# Usage (from Eclipse EPIC or VDI shell):
#   perl algo-schema-export.pl --db OP --output /path/to/exchange/algo-schema/
#   perl algo-schema-export.pl --db RPT --schema OWNER --output /path/to/output/
#   perl algo-schema-export.pl --db SEC --output /path/to/output/
#   perl algo-schema-export.pl --db APPR --output /path/to/output/
#
# Options:
#   --db       Database: OP (operational, default), RPT, SEC, APPR
#   --schema   Schema owner to export (default: connected user)
#   --output   Output directory for markdown files (required)
#
# Dependencies: DBI, DBD::Oracle, Utility/AlgoEnvironment (via project Lib/)
#
# Output:
#   tables-and-columns.md  — All tables with column definitions
#   foreign-keys.md        — Foreign key relationships
#   indexes.md             — Index definitions
#   constraints.md         — Primary key and unique constraints
#   README.md              — Generation metadata and instructions

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../../Lib";

use DBI;
use Getopt::Long;
use File::Path qw(make_path);
use File::Spec;
use POSIX qw(strftime);
use Utility;

# ---------------------------------------------------------------------------
# Command-line options
# ---------------------------------------------------------------------------
my ($db_type, $output_dir, $schema_owner, $help);
$db_type = 'OP';

GetOptions(
    'db|d=s'     => \$db_type,
    'output|o=s' => \$output_dir,
    'schema=s'   => \$schema_owner,
    'help|h'     => \$help,
) or usage();

usage() if $help;
usage("--output is required") unless $output_dir;

$db_type = uc($db_type);

my %db_config = (
    OP   => [ \&get_DB_OP,       \&get_DB_OP_USER,       \&get_DB_OP_PWD       ],
    RPT  => [ \&get_DB_RPT,      \&get_DB_RPT_USER,      \&get_DB_RPT_PWD      ],
    SEC  => [ \&get_DB_SEC,      \&get_DB_SEC_USER,       \&get_DB_SEC_PWD      ],
    APPR => [ \&get_DB_APPROVAL, \&get_DB_APPROVAL_USER,  \&get_DB_APPROVAL_PWD ],
);

unless (exists $db_config{$db_type}) {
    my $valid = join(', ', sort keys %db_config);
    usage("--db must be one of: $valid (got: $db_type)");
}

# ---------------------------------------------------------------------------
# Connect to Oracle via AlgoEnvironment
# ---------------------------------------------------------------------------
my ($sid, $user, $pass);

my $cfg = $db_config{$db_type};
$sid  = $cfg->[0]->();
$user = $cfg->[1]->();
$pass = $cfg->[2]->();

print "Connecting to $db_type database $sid as $user...\n";

my $dbh = DBI->connect("dbi:Oracle:$sid", $user, $pass, {
    RaiseError => 1,
    AutoCommit => 1,
    PrintError => 0,
}) or die "Cannot connect to Oracle: $DBI::errstr\n";

# Determine schema owner
$schema_owner //= uc($user);
$schema_owner = uc($schema_owner);

print "Connected. Exporting schema: $schema_owner\n";

# Create output directory
make_path($output_dir) unless -d $output_dir;

my $timestamp = strftime('%Y-%m-%d %H:%M', localtime);

# ---------------------------------------------------------------------------
# Export: Tables and Columns
# ---------------------------------------------------------------------------
print "Exporting tables and columns...\n";

my $tab_col_sql = qq{
    SELECT tc.TABLE_NAME, tc.COLUMN_NAME, tc.COLUMN_ID,
           tc.DATA_TYPE, tc.DATA_LENGTH, tc.DATA_PRECISION, tc.DATA_SCALE,
           tc.NULLABLE, tc.DATA_DEFAULT,
           cc.COMMENTS as COL_COMMENT
    FROM ALL_TAB_COLUMNS tc
    LEFT JOIN ALL_COL_COMMENTS cc
        ON tc.OWNER = cc.OWNER AND tc.TABLE_NAME = cc.TABLE_NAME AND tc.COLUMN_NAME = cc.COLUMN_NAME
    WHERE tc.OWNER = ?
    ORDER BY tc.TABLE_NAME, tc.COLUMN_ID
};

my $tab_comments_sql = qq{
    SELECT TABLE_NAME, COMMENTS
    FROM ALL_TAB_COMMENTS
    WHERE OWNER = ? AND TABLE_TYPE = 'TABLE'
    ORDER BY TABLE_NAME
};

my $tab_stats_sql = qq{
    SELECT TABLE_NAME, NUM_ROWS
    FROM ALL_TABLES
    WHERE OWNER = ?
    ORDER BY TABLE_NAME
};

my $sth_tc = $dbh->prepare($tab_col_sql);
$sth_tc->execute($schema_owner);

# Collect columns by table
my %tables;
my @table_order;
while (my $row = $sth_tc->fetchrow_hashref) {
    my $tname = $row->{TABLE_NAME};
    unless (exists $tables{$tname}) {
        $tables{$tname} = [];
        push @table_order, $tname;
    }
    push @{$tables{$tname}}, {
        name      => $row->{COLUMN_NAME},
        col_id    => $row->{COLUMN_ID},
        type      => format_data_type($row),
        nullable  => $row->{NULLABLE} eq 'Y' ? 'NULL' : 'NOT NULL',
        default   => defined $row->{DATA_DEFAULT} ? clean_default($row->{DATA_DEFAULT}) : '',
        comment   => $row->{COL_COMMENT} // '',
    };
}

# Table comments
my $sth_tcom = $dbh->prepare($tab_comments_sql);
$sth_tcom->execute($schema_owner);
my %table_comments;
while (my $row = $sth_tcom->fetchrow_hashref) {
    $table_comments{$row->{TABLE_NAME}} = $row->{COMMENTS} if $row->{COMMENTS};
}

# Row counts from statistics
my $sth_stats = $dbh->prepare($tab_stats_sql);
$sth_stats->execute($schema_owner);
my %row_counts;
while (my $row = $sth_stats->fetchrow_hashref) {
    $row_counts{$row->{TABLE_NAME}} = $row->{NUM_ROWS} if defined $row->{NUM_ROWS};
}

my $table_count = scalar @table_order;
my $column_count = 0;
$column_count += scalar @{$tables{$_}} for @table_order;
print "  Found $table_count tables, $column_count columns\n";

# Write tables-and-columns.md
{
    my $file = File::Spec->catfile($output_dir, 'tables-and-columns.md');
    open my $fh, '>:encoding(UTF-8)', $file or die "Cannot write $file: $!\n";

    print $fh "# Algo Database Schema \x{2014} Tables and Columns\n\n";
    print $fh "Generated: $timestamp | Schema: $schema_owner | Database: $sid\n\n";
    print $fh "**$table_count tables, $column_count columns**\n\n";

    # Table of Contents
    print $fh "## Table of Contents\n\n";
    for my $tname (@table_order) {
        my $ncols = scalar @{$tables{$tname}};
        my $anchor = lc($tname);
        my $rows_info = exists $row_counts{$tname} ? ", ~$row_counts{$tname} rows" : '';
        print $fh "- [$tname](#$anchor) ($ncols columns$rows_info)\n";
    }
    print $fh "\n---\n\n";

    # Table definitions
    for my $tname (@table_order) {
        print $fh "## $tname\n\n";
        if ($table_comments{$tname}) {
            print $fh "> $table_comments{$tname}\n\n";
        }

        print $fh "| # | Column | Type | Nullable | Default | Comment |\n";
        print $fh "|---|--------|------|----------|---------|--------|\n";
        for my $col (@{$tables{$tname}}) {
            my $def = $col->{default} ? "`$col->{default}`" : '';
            my $cmt = $col->{comment} || '';
            $cmt =~ s/\|/\\|/g;  # Escape pipes in comments
            printf $fh "| %d | %s | %s | %s | %s | %s |\n",
                $col->{col_id}, $col->{name}, $col->{type},
                $col->{nullable}, $def, $cmt;
        }
        print $fh "\n";
    }
    close $fh;
    print "  Wrote $file\n";
}

# ---------------------------------------------------------------------------
# Export: Primary Keys and Unique Constraints
# ---------------------------------------------------------------------------
print "Exporting constraints...\n";

my $constraints_sql = qq{
    SELECT c.CONSTRAINT_NAME, c.TABLE_NAME, c.CONSTRAINT_TYPE,
           cc.COLUMN_NAME, cc.POSITION
    FROM ALL_CONSTRAINTS c
    JOIN ALL_CONS_COLUMNS cc
        ON c.OWNER = cc.OWNER AND c.CONSTRAINT_NAME = cc.CONSTRAINT_NAME
    WHERE c.OWNER = ?
      AND c.CONSTRAINT_TYPE IN ('P', 'U')
    ORDER BY c.TABLE_NAME, c.CONSTRAINT_TYPE, c.CONSTRAINT_NAME, cc.POSITION
};

my $sth_con = $dbh->prepare($constraints_sql);
$sth_con->execute($schema_owner);

my %constraints;
while (my $row = $sth_con->fetchrow_hashref) {
    my $key = $row->{TABLE_NAME} . '.' . $row->{CONSTRAINT_NAME};
    unless (exists $constraints{$key}) {
        $constraints{$key} = {
            name    => $row->{CONSTRAINT_NAME},
            table   => $row->{TABLE_NAME},
            type    => $row->{CONSTRAINT_TYPE} eq 'P' ? 'PRIMARY KEY' : 'UNIQUE',
            columns => [],
        };
    }
    push @{$constraints{$key}{columns}}, $row->{COLUMN_NAME};
}

my $pk_count  = scalar grep { $constraints{$_}{type} eq 'PRIMARY KEY' } keys %constraints;
my $uq_count  = scalar grep { $constraints{$_}{type} eq 'UNIQUE' } keys %constraints;
print "  Found $pk_count primary keys, $uq_count unique constraints\n";

# Write constraints.md
{
    my $file = File::Spec->catfile($output_dir, 'constraints.md');
    open my $fh, '>:encoding(UTF-8)', $file or die "Cannot write $file: $!\n";

    print $fh "# Algo Database Schema \x{2014} Constraints\n\n";
    print $fh "Generated: $timestamp | Schema: $schema_owner | Database: $sid\n\n";
    print $fh "**$pk_count primary keys, $uq_count unique constraints**\n\n";

    # Group by table
    my %by_table;
    for my $key (sort keys %constraints) {
        my $c = $constraints{$key};
        push @{$by_table{$c->{table}}}, $c;
    }

    for my $tname (sort keys %by_table) {
        print $fh "## $tname\n\n";
        print $fh "| Constraint | Type | Column(s) |\n";
        print $fh "|-----------|------|----------|\n";
        for my $c (sort { $a->{type} cmp $b->{type} || $a->{name} cmp $b->{name} } @{$by_table{$tname}}) {
            printf $fh "| %s | %s | %s |\n",
                $c->{name}, $c->{type}, join(', ', @{$c->{columns}});
        }
        print $fh "\n";
    }
    close $fh;
    print "  Wrote $file\n";
}

# ---------------------------------------------------------------------------
# Export: Foreign Keys
# ---------------------------------------------------------------------------
print "Exporting foreign keys...\n";

my $fk_sql = qq{
    SELECT c.CONSTRAINT_NAME, c.TABLE_NAME,
           cc.COLUMN_NAME, cc.POSITION,
           c.R_CONSTRAINT_NAME,
           rc.TABLE_NAME as R_TABLE_NAME,
           rcc.COLUMN_NAME as R_COLUMN_NAME
    FROM ALL_CONSTRAINTS c
    JOIN ALL_CONS_COLUMNS cc
        ON c.OWNER = cc.OWNER AND c.CONSTRAINT_NAME = cc.CONSTRAINT_NAME
    JOIN ALL_CONSTRAINTS rc
        ON c.R_OWNER = rc.OWNER AND c.R_CONSTRAINT_NAME = rc.CONSTRAINT_NAME
    JOIN ALL_CONS_COLUMNS rcc
        ON rc.OWNER = rcc.OWNER AND rc.CONSTRAINT_NAME = rcc.CONSTRAINT_NAME AND cc.POSITION = rcc.POSITION
    WHERE c.OWNER = ?
      AND c.CONSTRAINT_TYPE = 'R'
    ORDER BY c.TABLE_NAME, c.CONSTRAINT_NAME, cc.POSITION
};

my $sth_fk = $dbh->prepare($fk_sql);
$sth_fk->execute($schema_owner);

my %fks;
while (my $row = $sth_fk->fetchrow_hashref) {
    my $key = $row->{TABLE_NAME} . '.' . $row->{CONSTRAINT_NAME};
    unless (exists $fks{$key}) {
        $fks{$key} = {
            name      => $row->{CONSTRAINT_NAME},
            table     => $row->{TABLE_NAME},
            columns   => [],
            r_table   => $row->{R_TABLE_NAME},
            r_columns => [],
        };
    }
    push @{$fks{$key}{columns}}, $row->{COLUMN_NAME};
    push @{$fks{$key}{r_columns}}, $row->{R_COLUMN_NAME};
}

my $fk_count = scalar keys %fks;
print "  Found $fk_count foreign keys\n";

# Write foreign-keys.md
{
    my $file = File::Spec->catfile($output_dir, 'foreign-keys.md');
    open my $fh, '>:encoding(UTF-8)', $file or die "Cannot write $file: $!\n";

    print $fh "# Algo Database Schema \x{2014} Foreign Keys\n\n";
    print $fh "Generated: $timestamp | Schema: $schema_owner | Database: $sid\n\n";
    print $fh "**$fk_count foreign keys**\n\n";

    # Group by table
    my %fk_by_table;
    for my $key (sort keys %fks) {
        my $fk = $fks{$key};
        push @{$fk_by_table{$fk->{table}}}, $fk;
    }

    for my $tname (sort keys %fk_by_table) {
        print $fh "## $tname\n\n";
        print $fh "| FK Name | Column(s) | Referenced Table | Referenced Column(s) |\n";
        print $fh "|---------|-----------|-----------------|---------------------|\n";
        for my $fk (sort { $a->{name} cmp $b->{name} } @{$fk_by_table{$tname}}) {
            printf $fh "| %s | %s | %s | %s |\n",
                $fk->{name},
                join(', ', @{$fk->{columns}}),
                $fk->{r_table},
                join(', ', @{$fk->{r_columns}});
        }
        print $fh "\n";
    }
    close $fh;
    print "  Wrote $file\n";
}

# ---------------------------------------------------------------------------
# Export: Indexes
# ---------------------------------------------------------------------------
print "Exporting indexes...\n";

my $idx_sql = qq{
    SELECT i.INDEX_NAME, i.TABLE_NAME, i.UNIQUENESS,
           ic.COLUMN_NAME, ic.COLUMN_POSITION
    FROM ALL_INDEXES i
    JOIN ALL_IND_COLUMNS ic
        ON i.OWNER = ic.INDEX_OWNER AND i.INDEX_NAME = ic.INDEX_NAME AND i.TABLE_NAME = ic.TABLE_NAME
    WHERE i.OWNER = ?
      AND i.INDEX_TYPE = 'NORMAL'
    ORDER BY i.TABLE_NAME, i.INDEX_NAME, ic.COLUMN_POSITION
};

my $sth_idx = $dbh->prepare($idx_sql);
$sth_idx->execute($schema_owner);

my %indexes;
my @idx_order;
while (my $row = $sth_idx->fetchrow_hashref) {
    my $key = $row->{TABLE_NAME} . '.' . $row->{INDEX_NAME};
    unless (exists $indexes{$key}) {
        $indexes{$key} = {
            name       => $row->{INDEX_NAME},
            table      => $row->{TABLE_NAME},
            uniqueness => $row->{UNIQUENESS},
            columns    => [],
        };
        push @idx_order, $key;
    }
    push @{$indexes{$key}{columns}}, $row->{COLUMN_NAME};
}

my $idx_count = scalar keys %indexes;
print "  Found $idx_count indexes\n";

# Write indexes.md
{
    my $file = File::Spec->catfile($output_dir, 'indexes.md');
    open my $fh, '>:encoding(UTF-8)', $file or die "Cannot write $file: $!\n";

    print $fh "# Algo Database Schema \x{2014} Indexes\n\n";
    print $fh "Generated: $timestamp | Schema: $schema_owner | Database: $sid\n\n";
    print $fh "**$idx_count indexes**\n\n";

    # Group by table
    my %idx_by_table;
    for my $key (sort keys %indexes) {
        my $idx = $indexes{$key};
        push @{$idx_by_table{$idx->{table}}}, $idx;
    }

    for my $tname (sort keys %idx_by_table) {
        print $fh "## $tname\n\n";
        print $fh "| Index Name | Uniqueness | Column(s) |\n";
        print $fh "|-----------|-----------|----------|\n";
        for my $idx (sort { $a->{name} cmp $b->{name} } @{$idx_by_table{$tname}}) {
            printf $fh "| %s | %s | %s |\n",
                $idx->{name}, $idx->{uniqueness}, join(', ', @{$idx->{columns}});
        }
        print $fh "\n";
    }
    close $fh;
    print "  Wrote $file\n";
}

# ---------------------------------------------------------------------------
# Generate README.md
# ---------------------------------------------------------------------------
{
    my $file = File::Spec->catfile($output_dir, 'README.md');
    open my $fh, '>:encoding(UTF-8)', $file or die "Cannot write $file: $!\n";

    print $fh "# Algo Database Schema Reference\n\n";
    print $fh "Exported from Oracle database for offline reference on GitHub.\n\n";
    print $fh "## Generation Info\n\n";
    print $fh "| Field | Value |\n";
    print $fh "|-------|-------|\n";
    print $fh "| Generated | $timestamp |\n";
    print $fh "| Schema | $schema_owner |\n";
    print $fh "| Database | $sid |\n";
    print $fh "| Tables | $table_count |\n";
    print $fh "| Columns | $column_count |\n";
    print $fh "| Foreign Keys | $fk_count |\n";
    print $fh "| Indexes | $idx_count |\n";
    print $fh "| Primary Keys | $pk_count |\n";
    print $fh "| Unique Constraints | $uq_count |\n";
    print $fh "\n";
    print $fh "## Files\n\n";
    print $fh "- **[tables-and-columns.md](tables-and-columns.md)** \x{2014} All tables with column definitions, types, defaults, comments\n";
    print $fh "- **[foreign-keys.md](foreign-keys.md)** \x{2014} Foreign key relationships between tables\n";
    print $fh "- **[indexes.md](indexes.md)** \x{2014} Index definitions\n";
    print $fh "- **[constraints.md](constraints.md)** \x{2014} Primary key and unique constraints\n";
    print $fh "\n";
    print $fh "## How to Regenerate\n\n";
    print $fh "Run from UCB_ALGO517 project (Bin/batch/) on VDI:\n\n";
    print $fh "```\n";
    print $fh "perl algo-schema-export.pl --db OP   --output /path/to/exchange/algo-schema/\n";
    print $fh "perl algo-schema-export.pl --db RPT  --schema OWNER --output /path/to/output/\n";
    print $fh "perl algo-schema-export.pl --db SEC  --output /path/to/output/\n";
    print $fh "perl algo-schema-export.pl --db APPR --output /path/to/output/\n";
    print $fh "```\n\n";
    print $fh "Credentials are resolved automatically via AlgoEnvironment.\n";

    close $fh;
    print "  Wrote $file\n";
}

# ---------------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------------
print "\nExport complete.\n";
print "  Tables:             $table_count\n";
print "  Columns:            $column_count\n";
print "  Primary Keys:       $pk_count\n";
print "  Unique Constraints: $uq_count\n";
print "  Foreign Keys:       $fk_count\n";
print "  Indexes:            $idx_count\n";
print "  Output:             $output_dir\n";

$dbh->disconnect();

# ---------------------------------------------------------------------------
# Helper functions
# ---------------------------------------------------------------------------
sub format_data_type {
    my $row = shift;
    my $type = $row->{DATA_TYPE};

    if ($type eq 'NUMBER') {
        if (defined $row->{DATA_PRECISION}) {
            return "NUMBER($row->{DATA_PRECISION},$row->{DATA_SCALE})";
        }
        return 'NUMBER';
    }
    elsif ($type eq 'VARCHAR2' || $type eq 'NVARCHAR2' || $type eq 'CHAR' || $type eq 'NCHAR' || $type eq 'RAW') {
        return "$type($row->{DATA_LENGTH})";
    }
    elsif ($type eq 'FLOAT') {
        return defined $row->{DATA_PRECISION} ? "FLOAT($row->{DATA_PRECISION})" : 'FLOAT';
    }
    else {
        return $type;  # DATE, TIMESTAMP, CLOB, BLOB, etc.
    }
}

sub clean_default {
    my $val = shift;
    $val =~ s/^\s+//;
    $val =~ s/\s+$//;
    $val =~ s/\n/ /g;
    return $val;
}

sub usage {
    my $msg = shift;
    print "ERROR: $msg\n\n" if $msg;
    print <<'USAGE';
Usage: perl algo-schema-export.pl [OPTIONS]

Place in UCB_ALGO517/SentryInterface-ALGO517/Bin/batch/ and run from there.
DB credentials are resolved via AlgoEnvironment (deployed on each environment).

Required:
  --output, -o  Output directory for markdown files

Optional:
  --db, -d      Database: OP (operational, default), RPT, SEC, APPR
  --schema      Schema owner to export (default: connected user)
  --help, -h    Show this help

Examples:
  perl algo-schema-export.pl --db OP   --output /path/to/exchange/algo-schema/
  perl algo-schema-export.pl --db RPT  --schema REPORTING_OWNER -o output/
  perl algo-schema-export.pl --db SEC  -o output/
  perl algo-schema-export.pl --db APPR -o output/
USAGE
    exit($msg ? 1 : 0);
}

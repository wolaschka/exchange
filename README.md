# Algo Database Schema Reference

Exported from Oracle database for offline reference on GitHub.

## Generation Info

| Field | Value |
|-------|-------|
| Generated | 2026-02-03 13:04 |
| Schema | TUQCEUCBCORE01 |
| Database | PDQCEQ10 |
| Tables | 395 |
| Columns | 5058 |
| Foreign Keys | 740 |
| Indexes | 574 |
| Primary Keys | 340 |
| Unique Constraints | 61 |

## Files

- **[tables-and-columns.md](tables-and-columns.md)** — All tables with column definitions, types, defaults, comments
- **[foreign-keys.md](foreign-keys.md)** — Foreign key relationships between tables
- **[indexes.md](indexes.md)** — Index definitions
- **[constraints.md](constraints.md)** — Primary key and unique constraints

## How to Regenerate

Run from UCB_ALGO517 project (Bin/batch/) on VDI:

```
perl algo-schema-export.pl --db OP   --output /path/to/exchange/algo-schema/
perl algo-schema-export.pl --db RPT  --schema OWNER --output /path/to/output/
perl algo-schema-export.pl --db SEC  --output /path/to/output/
perl algo-schema-export.pl --db APPR --output /path/to/output/
```

Credentials are resolved automatically via AlgoEnvironment.

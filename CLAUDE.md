# CLAUDE.md

SNMP agent exposing BIND9 DNS server statistics for monitoring systems.

## Stack
- Perl 5.10+

## Lint & Test
```bash
# Syntax check
perl -c bin/snmp_bind9_stats.pl

# Unit tests
prove -r t/unit

# Integration tests
prove -r t/integration

# Code coverage
cover -test
```

## Perl Modules
```bash
cpanm Config::IniFiles Net::SNMP File::Slurp Log::Log4perl
```

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-10-04

### Added
- Initial stable release of SNMP BIND9 Statistics
- Core SNMP::BIND9::Statistics module for collecting DNS metrics
- SNMP::BIND9::Agent module for exposing statistics via SNMP
- Comprehensive statistics collection:
  - Query types (A, AAAA, MX, PTR, TXT, SOA, CNAME, NS)
  - Name server statistics (success, NXDOMAIN, SERVFAIL, etc.)
  - Resolver statistics (IPv4/IPv6 queries, timeouts, errors)
  - Zone transfer statistics
  - Cache hit/miss ratios
- Intelligent polling with configurable intervals
- Caching mechanism to reduce system load
- Force refresh capability
- SNMP v2c support with custom OID mapping
- INI-based configuration system
- Command-line interface with help and version options
- Comprehensive error handling and logging
- Signal handling for graceful shutdown
- Test suite with unit and integration tests
- Complete documentation and examples
- Systemd service configuration
- Monitoring platform integration guides (Nagios, Zabbix, PRTG)

### Security
- Proper file permission handling
- Configurable SNMP community strings
- Read-only statistics access

### Documentation
- Comprehensive README with installation and usage guides
- Troubleshooting section with common issues
- Performance considerations
- SNMP OID mapping documentation
- Integration examples for monitoring platforms

[1.0.0]: https://github.com/thomasvincent/snmp-bind9-statistics/releases/tag/v1.0.0
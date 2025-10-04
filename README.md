# SNMP BIND9 Statistics

[![Perl](https://img.shields.io/badge/Perl-5.10%2B-blue)](https://www.perl.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub release](https://img.shields.io/github/v/release/thomasvincent/snmp-bind9-statistics)](https://github.com/thomasvincent/snmp-bind9-statistics/releases)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/thomasvincent/snmp-bind9-statistics/graphs/commit-activity)

A comprehensive Perl-based monitoring solution for BIND9 DNS servers that exposes statistics via SNMP for integration with network monitoring systems.

## 🚀 Overview

SNMP BIND9 Statistics is a production-ready tool that bridges the gap between BIND9's built-in statistics and SNMP-based monitoring infrastructure. It collects detailed DNS server metrics using `rndc stats` and exposes them through SNMP, enabling seamless integration with monitoring platforms like Nagios, Zabbix, PRTG, and others.

## ✨ Features

- 📊 **Comprehensive Statistics Collection**
  - Query types (A, AAAA, MX, PTR, TXT, etc.)
  - Response codes and error rates
  - Cache hit/miss ratios
  - Zone transfer statistics
  - Resolver performance metrics

- 🔄 **Intelligent Polling**
  - Configurable polling intervals
  - Caching mechanism to reduce system load
  - Force refresh capability
  - Automatic statistics file rotation handling

- 🛡️ **Enterprise-Ready**
  - SNMP v2c support
  - Custom OID mapping
  - Comprehensive error handling
  - Detailed logging with Log4perl
  - Signal handling for graceful shutdown

- 🔧 **Flexible Configuration**
  - INI-based configuration files
  - Environment variable support
  - Command-line parameter overrides
  - Multiple BIND9 instance support

## 📋 Requirements

### System Requirements
- **Operating System**: Linux/Unix with BIND9
- **Perl**: Version 5.10 or higher
- **BIND9**: With `rndc` configured and operational
- **Privileges**: Read access to BIND9 statistics file

### Perl Modules
```bash
# Required modules
Config::IniFiles
Net::SNMP
File::Slurp
Log::Log4perl
FindBin
Time::HiRes
Scalar::Util
POSIX

# Test modules (for development)
Test::More
Test::Warn
File::Temp
```

## 📦 Installation

### From GitHub
```bash
# Clone the repository
git clone https://github.com/thomasvincent/snmp-bind9-statistics.git
cd snmp-bind9-statistics

# Install Perl dependencies using CPAN
cpan Config::IniFiles Net::SNMP File::Slurp Log::Log4perl

# Or using cpanm (recommended)
cpanm Config::IniFiles Net::SNMP File::Slurp Log::Log4perl

# Make the script executable
chmod +x bin/snmp_bind9_stats.pl
```

### Using Makefile.PL
```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Configuration

Create a configuration file `config.ini`:

```ini
[general]
# Path to BIND9 statistics file
stats_file = /var/cache/bind/named.stats

# Command to generate statistics
rndc_command = rndc stats

# Logging level (DEBUG, INFO, WARN, ERROR)
log_level = INFO

# Statistics polling interval in seconds
poll_interval = 300

[snmp]
# SNMP community string
community = public

# SNMP listening port
port = 161

# Agent bind address (0.0.0.0 for all interfaces)
agent_addr = 0.0.0.0
```

### Environment Variables
You can override configuration using environment variables:
```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Usage

### Basic Usage
```bash
# Run with default configuration
./bin/snmp_bind9_stats.pl

# Specify custom configuration file
./bin/snmp_bind9_stats.pl --config=/etc/bind9-snmp/config.ini

# Display help
./bin/snmp_bind9_stats.pl --help

# Show version
./bin/snmp_bind9_stats.pl --version
```

### Running as a Service

#### Systemd Service
Create `/etc/systemd/system/bind9-snmp.service`:
```ini
[Unit]
Description=SNMP BIND9 Statistics Agent
After=network.target named.service

[Service]
Type=simple
User=bind
ExecStart=/usr/local/bin/snmp_bind9_stats.pl --config=/etc/bind9-snmp/config.ini
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
```

Enable and start the service:
```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d Script (Legacy Systems)
```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID Mapping

The tool uses the following OID structure:

```
Base OID: 1.3.6.1.4.1.99999.1

Query Statistics (1.3.6.1.4.1.99999.1.1.*)
├── .1 = incoming_queries_A
├── .2 = incoming_queries_AAAA
├── .3 = incoming_queries_NS
├── .4 = incoming_queries_MX
├── .5 = incoming_queries_PTR
├── .6 = incoming_queries_TXT
├── .7 = incoming_queries_SOA
└── .8 = incoming_queries_CNAME

Name Server Statistics (1.3.6.1.4.1.99999.1.2.*)
├── .1 = queries_resulted_in_successful_answer
├── .2 = queries_resulted_in_authoritative_answer
├── .3 = queries_resulted_in_non_authoritative_answer
├── .4 = queries_resulted_in_nxrrset
├── .5 = queries_resulted_in_SERVFAIL
├── .6 = queries_resulted_in_NXDOMAIN
├── .7 = queries_caused_recursion
└── .8 = duplicate_queries_received

Resolver Statistics (1.3.6.1.4.1.99999.1.3.*)
├── .1 = IPv4_queries_sent
├── .2 = IPv6_queries_sent
├── .3 = query_timeouts
├── .4 = query_errors
└── .5 = EDNS0_query_failures
```

### Querying via SNMP
```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Testing

### Unit Tests
```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integration Tests
```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Manual Testing
```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Monitoring Integration

### Nagios/Icinga
```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix Template
Import the provided Zabbix template from `contrib/zabbix/bind9-snmp-template.xml`

### PRTG Custom Sensor
Use the SNMP Custom Advanced sensor with the provided OIDs

## 🐛 Troubleshooting

### Common Issues

1. **Permission Denied on Stats File**
   ```bash
   # Check file permissions
   ls -l /var/cache/bind/named.stats
   
   # Fix permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP Port Already in Use**
   ```bash
   # Check what's using port 161
   sudo netstat -tulpn | grep 161
   
   # Use alternative port in config
   port = 1161
   ```

3. **rndc Command Fails**
   ```bash
   # Test rndc manually
   rndc stats
   
   # Check rndc configuration
   rndc-confgen -a
   ```

4. **No Statistics Generated**
   ```bash
   # Enable statistics in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Debug Mode
```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Performance Considerations

- **Polling Interval**: Default 300 seconds, adjust based on monitoring needs
- **Cache Duration**: Statistics are cached between polls to reduce load
- **File I/O**: Stats file is read only when needed
- **Memory Usage**: Typically under 20MB RSS
- **CPU Usage**: Minimal, spike only during statistics collection

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Setup
```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔒 Security

Please see our [Security Policy](SECURITY.md) for details on reporting vulnerabilities.

## 👨‍💻 Author

**Thomas Vincent**
- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Acknowledgments

- BIND9 development team for the excellent DNS server
- Perl community for the robust SNMP modules
- Contributors and users of this project

## 📚 Resources

- [BIND9 Documentation](https://bind9.readthedocs.io/)
- [Net::SNMP Documentation](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID Registry](http://www.oid-info.com/)
- [Project Wiki](https://github.com/thomasvincent/snmp-bind9-statistics/wiki)

## 🗺️ Roadmap

- [ ] SNMP v3 support with authentication
- [ ] Prometheus exporter alternative
- [ ] Web-based statistics dashboard
- [ ] Docker container support
- [ ] Automated installer script
- [ ] Performance metrics collection
- [ ] Historical data storage
- [ ] Alert threshold configuration

---

For more information, bug reports, or feature requests, please visit the [GitHub repository](https://github.com/thomasvincent/snmp-bind9-statistics).
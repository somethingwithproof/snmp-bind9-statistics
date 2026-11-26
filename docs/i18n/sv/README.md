# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · **Svenska** · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

En heltäckande Perl-baserad övervakningslösning för BIND9 DNS-servrar som exponerar statistik via SNMP för integrering med nätverksövervakningssystem.

## 🚀 Översikt

SNMP BIND9 Statistics är ett verktyg som överbryggar klyftan mellan BIND9:s inbyggda statistik och SNMP-baserad övervakningsinfrastruktur. Det samlar in detaljerade mätvärden från DNS-servern med hjälp av `rndc stats` och exponerar dem via SNMP, vilket möjliggör sömlös integrering med övervakningsplattformar som Nagios, Zabbix, PRTG och andra.

## ✨ Funktioner

- 📊 **Omfattande statistikinsamling**
  - Frågetyper (A, AAAA, MX, PTR, TXT osv.)
  - Svarskoder och felfrekvenser
  - Träff-/misskvot i cache
  - Statistik för zonöverföringar
  - Prestandamätvärden för resolver

- 🔄 **Intelligent polling**
  - Konfigurerbara pollingintervall
  - Cachningsmekanism för att minska systembelastningen
  - Möjlighet till tvingad uppdatering
  - Automatisk hantering av rotation av statistikfiler

- 🛡️ **Anpassat för företagsmiljöer**
  - Stöd för SNMP v2c
  - Anpassad OID-mappning
  - Omfattande felhantering
  - Detaljerad loggning med Log4perl
  - Signalhantering för kontrollerad nedstängning

- 🔧 **Flexibel konfiguration**
  - INI-baserade konfigurationsfiler
  - Stöd för miljövariabler
  - Åsidosättning via kommandoradsparametrar
  - Stöd för flera BIND9-instanser

## 📋 Krav

### Systemkrav

- **Operativsystem**: Linux/Unix med BIND9
- **Perl**: Version 5.10 eller senare
- **BIND9**: Med `rndc` konfigurerat och i drift
- **Behörigheter**: Läsrättighet till BIND9:s statistikfil

### Perl-moduler

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

### Från GitHub

```bash
# Clone the repository
git clone https://github.com/somethingwithproof/snmp-bind9-statistics.git
cd snmp-bind9-statistics

# Install Perl dependencies using CPAN
cpan Config::IniFiles Net::SNMP File::Slurp Log::Log4perl

# Or using cpanm (recommended)
cpanm Config::IniFiles Net::SNMP File::Slurp Log::Log4perl

# Make the script executable
chmod +x bin/snmp_bind9_stats.pl
```

### Med Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Konfiguration

Skapa en konfigurationsfil `config.ini`:

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

## 🚀 Användning

### Grundläggande användning

```bash
# Run with default configuration
./bin/snmp_bind9_stats.pl

# Specify custom configuration file
./bin/snmp_bind9_stats.pl --config=/etc/bind9-snmp/config.ini

# Display help
./bin/snmp_bind9_stats.pl --help

# Show version
./bin/snmp_bind9_stats.pl --version

# Display localized CLI help (supports 45 locales via --lang or LC_ALL/LC_MESSAGES/LANG)
./bin/snmp_bind9_stats.pl --lang=de --help
```

### Lokalisering

CLI-användning och loggdiagnostik har stöd för 45 språkversioner (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) utan några externa CPAN-beroenden via `SNMP::BIND9::I18n`. Upplösningen tar hänsyn till `--lang`, sedan `LC_ALL`, `LC_MESSAGES` och `LANG`, och faller tillbaka till `en`. SNMP-OID:er, protokollmarkörer och numeriska mätvärden förblir oförändrade på alla språk.

### Köra som en tjänst

#### Systemd-tjänst

Skapa `/etc/systemd/system/bind9-snmp.service`:

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

Aktivera och starta tjänsten:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d-skript (äldre system)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID-mappning

Verktyget använder följande OID-struktur:

```text
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

### Frågor via SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Testning

### Enhetstester

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integrationstester

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Manuell testning

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Integrering med övervakning

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Anpassad PRTG-sensor

Använd sensorn SNMP Custom Advanced med de tillhandahållna OID:erna

## 🐛 Felsökning

### Vanliga problem

1. **Åtkomst nekad till statistikfil**

   ```bash
   # Check file permissions
   ls -l /var/cache/bind/named.stats

   # Fix permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP-porten används redan**

   ```bash
   # Check what's using port 161
   sudo netstat -tulpn | grep 161

   # Use alternative port in config
   port = 1161
   ```

3. **rndc-kommandot misslyckas**

   ```bash
   # Test rndc manually
   rndc stats

   # Check rndc configuration
   rndc-confgen -a
   ```

4. **Ingen statistik genereras**

   ```bash
   # Enable statistics in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Felsökningsläge

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Prestandaöverväganden

- **Pollingintervall**: Standard 300 sekunder, justera efter övervakningsbehov
- **Cachetid**: Statistik cachas mellan pollingar för att minska belastningen
- **Fil-I/O**: Statistikfilen läses bara vid behov
- **Minnesanvändning**: Vanligtvis under 20 MB RSS
- **CPU-användning**: Minimal, med en topp endast under statistikinsamling

## 🤝 Bidra

Bidrag är välkomna! Skicka gärna in en Pull Request.

1. Gör en fork av arkivet
2. Skapa din funktionsgren (`git checkout -b feature/amazing-feature`)
3. Checka in dina ändringar (`git commit -m 'feat: add amazing feature'`)
4. Pusha till grenen (`git push origin feature/amazing-feature`)
5. Öppna en Pull Request

### Utvecklingsmiljö

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licens

Detta projekt är licensierat under MIT-licensen - se filen [LICENSE](../../../LICENSE) för detaljer.

## 🔒 Säkerhet

Se vår [säkerhetspolicy](../../../SECURITY.md) för information om hur du rapporterar sårbarheter.

## 👨💻 Författare

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Tack till

- Utvecklingsteamet bakom BIND9 för den utmärkta DNS-servern
- Perl-communityn för de robusta SNMP-modulerna
- Bidragsgivare och användare av detta projekt

## 📚 Resurser

- [Dokumentation för BIND9](https://bind9.readthedocs.io/)
- [Dokumentation för Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID-register](http://www.oid-info.com/)
- [Projektets wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Färdplan

- [ ] Stöd för SNMP v3 med autentisering
- [ ] Alternativ för Prometheus-exportör
- [ ] Webbaserad instrumentpanel för statistik
- [ ] Stöd för Docker-containrar
- [ ] Automatiserat installationsskript
- [ ] Insamling av prestandamätvärden
- [ ] Historisk datalagring
- [ ] Konfiguration av larmtrösklar

---

För mer information, felrapporter eller funktionsönskemål, besök [GitHub-arkivet](https://github.com/somethingwithproof/snmp-bind9-statistics).

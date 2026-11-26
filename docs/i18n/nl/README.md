# SNMP BIND9-statistieken

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · **Nederlands** · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Een uitgebreide op Perl gebaseerde monitoringoplossing voor BIND9 DNS-servers die statistieken via SNMP beschikbaar stelt voor integratie met netwerkmonitoringsystemen.

## 🚀 Overzicht

SNMP BIND9 Statistics is een tool die de kloof overbrugt tussen de ingebouwde statistieken van BIND9 en op SNMP gebaseerde monitoringinfrastructuur. Het verzamelt gedetailleerde DNS-servermetrieken met behulp van `rndc stats` en stelt deze beschikbaar via SNMP, wat naadloze integratie mogelijk maakt met monitoringplatforms zoals Nagios, Zabbix, PRTG en andere.

## ✨ Functies

- 📊 **Uitgebreide statistiekverzameling**
  - Querytypes (A, AAAA, MX, PTR, TXT, enz.)
  - Antwoordcodes en foutpercentages
  - Cache hit/miss-ratio's
  - Statistieken voor zoneoverdrachten
  - Prestatiemetrieken van de resolver

- 🔄 **Intelligente polling**
  - Configureerbare polling-intervallen
  - Cachingmechanisme om systeembelasting te verlagen
  - Mogelijkheid tot geforceerd vernieuwen
  - Automatische afhandeling van rotatie van statistiekbestanden

- 🛡️ **Bedrijfsklaar**
  - Ondersteuning voor SNMP v2c
  - Aangepaste OID-mapping
  - Uitgebreide foutafhandeling
  - Gedetailleerde logging met Log4perl
  - Signaalafhandeling voor gecontroleerd afsluiten

- 🔧 **Flexibele configuratie**
  - Configuratiebestanden in INI-formaat
  - Ondersteuning voor omgevingsvariabelen
  - Overschrijven via opdrachtregelparameters
  - Ondersteuning voor meerdere BIND9-instanties

## 📋 Vereisten

### Systeemvereisten

- **Besturingssysteem**: Linux/Unix met BIND9
- **Perl**: Versie 5.10 of hoger
- **BIND9**: Met geconfigureerde en werkende `rndc`
- **Rechten**: Leestoegang tot het BIND9-statistiekenbestand

### Perl-modules

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

## 📦 Installatie

### Vanaf GitHub

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

### Met Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Configuratie

Maak een configuratiebestand `config.ini` aan:

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

### Omgevingsvariabelen

Je kunt de configuratie overschrijven met omgevingsvariabelen:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Gebruik

### Basisgebruik

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

### Lokalisatie

CLI-gebruik en logdiagnostiek ondersteunen 45 talen (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) zonder externe CPAN-afhankelijkheden via `SNMP::BIND9::I18n`. De resolutie volgt `--lang`, daarna `LC_ALL`, `LC_MESSAGES` en `LANG`, met terugval naar `en`. SNMP-OID's, protocoltokens en numerieke metriekwaarden blijven in alle talen ongewijzigd.

### Uitvoeren als service

#### Systemd-service

Maak `/etc/systemd/system/bind9-snmp.service` aan:

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

Schakel de service in en start deze:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d-script (verouderde systemen)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID-mapping

De tool gebruikt de volgende OID-structuur:

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

### Opvragen via SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Testen

### Unit-tests

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integratietests

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Handmatig testen

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Monitoringintegratie

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix-sjabloon

Importeer het meegeleverde Zabbix-sjabloon uit `contrib/zabbix/bind9-snmp-template.xml`

### Aangepaste PRTG-sensor

Gebruik de sensor SNMP Custom Advanced met de opgegeven OID's

## 🐛 Probleemoplossing

### Veelvoorkomende problemen

1. **Toegang geweigerd tot statistiekenbestand**

   ```bash
   # Controleer bestandsrechten
   ls -l /var/cache/bind/named.stats

   # Herstel rechten
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP-poort al in gebruik**

   ```bash
   # Controleer wat poort 161 gebruikt
   sudo netstat -tulpn | grep 161

   # Gebruik alternatieve poort in configuratie
   port = 1161
   ```

3. **Opdracht rndc mislukt**

   ```bash
   # Test rndc handmatig
   rndc stats

   # Controleer rndc-configuratie
   rndc-confgen -a
   ```

4. **Geen statistieken gegenereerd**

   ```bash
   # Schakel statistieken in via named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Debug-modus

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Prestatieoverwegingen

- **Polling-interval**: Standaard 300 seconden, aanpasbaar aan de monitoringbehoeften
- **Cacheduur**: Statistieken worden tussen polls gecachet om de belasting te verlagen
- **Bestands-I/O**: Het statistiekenbestand wordt alleen gelezen wanneer nodig
- **Geheugengebruik**: Doorgaans minder dan 20MB RSS
- **CPU-gebruik**: Minimaal, alleen een piek tijdens het verzamelen van statistieken

## 🤝 Bijdragen

Bijdragen zijn welkom! Dien gerust een Pull Request in.

1. Fork de repository
2. Maak je featurebranch aan (`git checkout -b feature/amazing-feature`)
3. Commit je wijzigingen (`git commit -m 'feat: add amazing feature'`)
4. Push naar de branch (`git push origin feature/amazing-feature`)
5. Open een Pull Request

### Ontwikkelingsomgeving instellen

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licentie

Dit project is gelicentieerd onder de MIT-licentie - zie het bestand [LICENSE](../../../LICENSE) voor details.

## 🔒 Beveiliging

Raadpleeg ons [Beveiligingsbeleid](../../../SECURITY.md) voor meer informatie over het melden van kwetsbaarheden.

## 👨💻 Auteur

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Dankwoord

- Het BIND9-ontwikkelteam voor de uitstekende DNS-server
- De Perl-community voor de robuuste SNMP-modules
- Bijdragers en gebruikers van dit project

## 📚 Bronnen

- [BIND9-documentatie](https://bind9.readthedocs.io/)
- [Net::SNMP-documentatie](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID-register](http://www.oid-info.com/)
- [Projectwiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Roadmap

- [ ] Ondersteuning voor SNMP v3 met authenticatie
- [ ] Alternatief als Prometheus-exporter
- [ ] Webgebaseerd statistiekendashboard
- [ ] Ondersteuning voor Docker-containers
- [ ] Geautomatiseerd installatiescript
- [ ] Verzameling van prestatiemetrieken
- [ ] Opslag van historische gegevens
- [ ] Configuratie van waarschuwingsdrempels

---

Ga voor meer informatie, bugrapporten of functieverzoeken naar de [GitHub-repository](https://github.com/somethingwithproof/snmp-bind9-statistics).

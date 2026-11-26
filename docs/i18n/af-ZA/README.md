# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

**Afrikaans** · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

'n Omvattende Perl-gebaseerde moniteringsoplossing vir BIND9 DNS-bedieners wat statistieke via SNMP blootstel vir integrasie met netwerkmoniteringstelsels.

## 🚀 Oorsig

SNMP BIND9 Statistics is 'n hulpmiddel wat die gaping oorbrug tussen BIND9 se ingeboude statistieke en SNMP-gebaseerde moniteringsinfrastruktuur. Dit versamel gedetailleerde DNS-bedienermetrieke met behulp van `rndc stats` en stel dit via SNMP bloot, wat naatlose integrasie met moniteringsplatforms soos Nagios, Zabbix, PRTG en ander moontlik maak.

## ✨ Kenmerke

- 📊 **Omvattende statistiekversameling**
  - Navraagtipe (A, AAAA, MX, PTR, TXT, ens.)
  - Antwoordkodes en foutkoerse
  - Kas-treffer-/misverhoudings
  - Sone-oordragstatistieke
  - Oplosser-werkverrigtingsmetrieke

- 🔄 **Intelligente peiling**
  - Konfigureerbare peilingsintervalle
  - Kasmeganisme om stelsellading te verminder
  - Verpligte verversingsvermoë
  - Outomatiese hantering van statistieklêer-rotasie

- 🛡️ **Ondernemingsgereed**
  - SNMP v2c-ondersteuning
  - Pasgemaakte OID-kartering
  - Omvattende fouthantering
  - Gedetailleerde logboeking met Log4perl
  - Seinhantering vir elegante afsluiting

- 🔧 **Buigsame konfigurasie**
  - INI-gebaseerde konfigurasielêers
  - Ondersteuning vir omgewingsveranderlikes
  - Oorskrywing via opdragreëlparameters
  - Ondersteuning vir verskeie BIND9-instansies

## 📋 Vereistes

### Stelselvereistes

- **Bedryfstelsel**: Linux/Unix met BIND9
- **Perl**: Weergawe 5.10 of hoër
- **BIND9**: Met `rndc` gekonfigureer en operasioneel
- **Voorregte**: Leestoegang tot die BIND9-statistieklêer

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

## 📦 Installasie

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

### Met behulp van Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Konfigurasie

Skep 'n konfigurasielêer `config.ini`:

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

## 🚀 Gebruik

### Basiese gebruik

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

CLI-gebruik en logboekdiagnostiek ondersteun 45 lokale (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) met nul eksterne CPAN-afhanklikhede via `SNMP::BIND9::I18n`. Oplossing eerbiedig `--lang`, dan `LC_ALL`, `LC_MESSAGES` en `LANG`, en val terug na `en`. SNMP OID's, protokoltokens en numeriese metriekwaardes bly onveranderd oor alle lokale heen.

### Uitvoering as 'n diens

#### Systemd-diens

Skep `/etc/systemd/system/bind9-snmp.service`:

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

Aktiveer en begin die diens:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d-skrip (verouderde stelsels)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID-kartering

Die hulpmiddel gebruik die volgende OID-struktuur:

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

### Navrae via SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Toetsing

### Eenheidstoetse

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integrasietoetse

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Handmatige toetsing

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Monitering-integrasie

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Pasgemaakte PRTG-sensor

Gebruik die SNMP Custom Advanced-sensor met die verskafde OID's

## 🐛 Foutsporing

### Algemene probleme

1. **Toestemming geweier op statistieklêer**

   ```bash
   # Gaan lêertoestemmings na
   ls -l /var/cache/bind/named.stats

   # Herstel toestemmings
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP-poort reeds in gebruik**

   ```bash
   # Kyk wat poort 161 gebruik
   sudo netstat -tulpn | grep 161

   # Gebruik alternatiewe poort in konfigurasie
   port = 1161
   ```

3. **rndc-opdrag misluk**

   ```bash
   # Toets rndc handmatig
   rndc stats

   # Gaan rndc-konfigurasie na
   rndc-confgen -a
   ```

4. **Geen statistieke gegenereer nie**

   ```bash
   # Aktiveer statistieke in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Ontfoutingsmodus

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Werkverrigtingsoorwegings

- **Peilingsinterval**: Verstek 300 sekondes, pas aan op grond van moniteringsbehoeftes
- **Kasduur**: Statistieke word tussen peilings in die kas gestoor om lading te verminder
- **Lêer-I/O**: Statistieklêer word slegs gelees wanneer nodig
- **Geheuegebruik**: Tipies onder 20MB RSS
- **SVE-gebruik**: Minimaal, piek slegs tydens statistiekversameling

## 🤝 Bydraes

Bydraes is welkom! Dien gerus 'n Pull Request in.

1. Fork die bewaarplek
2. Skep jou kenmerktak (`git checkout -b feature/amazing-feature`)
3. Dien jou veranderinge in (`git commit -m 'feat: add amazing feature'`)
4. Stoot na die tak (`git push origin feature/amazing-feature`)
5. Maak 'n Pull Request oop

### Ontwikkelingsopstelling

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lisensie

Hierdie projek is gelisensieer onder die MIT-lisensie - sien die [LICENSE](../../../LICENSE)-lêer vir besonderhede.

## 🔒 Sekuriteit

Sien asseblief ons [Sekuriteitsbeleid](../../../SECURITY.md) vir besonderhede oor hoe om kwesbaarhede aan te meld.

## 👨💻 Outeur

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Erkennings

- BIND9-ontwikkelingspan vir die uitstekende DNS-bediener
- Perl-gemeenskap vir die robuuste SNMP-modules
- Bydraers en gebruikers van hierdie projek

## 📚 Hulpbronne

- [BIND9-dokumentasie](https://bind9.readthedocs.io/)
- [Net::SNMP-dokumentasie](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID-register](http://www.oid-info.com/)
- [Projek-wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Padkaart

- [ ] SNMP v3-ondersteuning met stawing
- [ ] Prometheus-uitvoerder-alternatief
- [ ] Webgebaseerde statistiekpaneelbord
- [ ] Docker-houerondersteuning
- [ ] Outomatiese installeerderskrip
- [ ] Werkverrigtingsmetriek-versameling
- [ ] Historiese databerging
- [ ] Drumpelwaardekonfigurasie vir waarskuwings

---

Vir meer inligting, foutverslae of kenmerkversoeke, besoek asseblief die [GitHub-bewaarplek](https://github.com/somethingwithproof/snmp-bind9-statistics).

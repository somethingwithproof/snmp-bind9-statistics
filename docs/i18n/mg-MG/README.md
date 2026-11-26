# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · **Malagasy** · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Vahaolana fanaraha-maso feno mifototra amin'ny Perl ho an'ny mpizara DNS BIND9 izay mampiseho statistika amin'ny alalan'ny SNMP mba hampidirana azy amin'ny rafitra fanaraha-maso tambajotra.

## 🚀 Topi-maso

Ny SNMP BIND9 Statistics dia fitaovana mampifandray ny statistika voaorina ao amin'ny BIND9 sy ny fotodrafitrasa fanaraha-maso mifototra amin'ny SNMP. Manangona metrika amin'ny antsipiriany momba ny mpizara DNS izy amin'ny alalan'ny `rndc stats` ary mampiseho azy ireo amin'ny alalan'ny SNMP, izay ahafahana mampiditra azy moramora amin'ny sehatra fanaraha-maso toy ny Nagios, Zabbix, PRTG, sy ny hafa.

## ✨ Endri-javatra

- 📊 **Fanangonana statistika feno**
  - Karazana fangatahana (A, AAAA, MX, PTR, TXT, sns.)
  - Kaody valiny sy tahan'ny hadisoana
  - Tahan'ny fahitana/tsy fahitana ao amin'ny cache
  - Statistika famindrana faritra (zone transfer)
  - Metrika momba ny fahaiza-miasan'ny resolver

- 🔄 **Fanadihadiana (polling) marani-tsaina**
  - Elanelam-potoana fanadihadiana azo amboarina
  - Rafitra cache hampihenana ny enta-mavesatry ny rafitra
  - Fahafahana manery fanavaozana
  - Fitantanana mandeha ho azy ny fihodinan'ny rakitra statistika

- 🛡️ **Vonona ho an'ny orinasa**
  - Fanohanana SNMP v2c
  - Fampifandraisana OID namboarina
  - Fitantanana hadisoana feno
  - Firaketana an-tsoratra amin'ny antsipiriany miaraka amin'ny Log4perl
  - Fitantanana famantarana (signal) ho an'ny fanakatonana milamina

- 🔧 **Fikirakirana malefaka**
  - Rakitra fikirakirana mifototra amin'ny INI
  - Fanohanana miovaova momba ny tontolo iainana
  - Fanoloana masontsivana amin'ny tsipika baiko
  - Fanohanana ohatra BIND9 maromaro

## 📋 Fepetra takiana

### Fepetra takiana amin'ny rafitra

- **Rafitra fiasana**: Linux/Unix misy BIND9
- **Perl**: Kinova 5.10 na vaovao kokoa
- **BIND9**: Miaraka amin'ny `rndc` voafikirakira sy miasa
- **Fahazoan-dalana**: Fahazoan-dalana hamaky ny rakitra statistika BIND9

### Modely Perl

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

## 📦 Fametrahana

### Avy amin'ny GitHub

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

### Mampiasa Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Fikirakirana

Mamoròna rakitra fikirakirana `config.ini`:

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

## 🚀 Fampiasana

### Fampiasana fototra

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

### Fandikana sy fampifanarahana amin'ny fiteny

Ny torolalana fampiasana CLI sy ny fanadihadiana an-tsoratra (log) dia manohana fiteny sy faritra 45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) tsy misy fiankinan-doha CPAN ivelany amin'ny alalan'ny `SNMP::BIND9::I18n`. Ny famahana ny fiteny dia manaja ny `--lang`, avy eo `LC_ALL`, `LC_MESSAGES`, ary `LANG`, ary miverina amin'ny `en` raha tsy hita. Ny SNMP OID, ny marika protocole, ary ny sanda isa amin'ny metrika dia tsy miova amin'ny fiteny rehetra.

### Fampandehanana ho toy ny serivisy

#### Serivisy Systemd

Mamoròna `/etc/systemd/system/bind9-snmp.service`:

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

Alefaso sy atombohy ny serivisy:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Script Init.d (Rafitra taloha)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Fampifandraisana SNMP OID

Mampiasa izao rafitra OID izao ny fitaovana:

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

### Fangatahana amin'ny alalan'ny SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Fitsapana

### Fitsapana singa

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Fitsapana fampidirana

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Fitsapana tanana

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Fampidirana amin'ny fanaraha-maso

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Sensor namboarina PRTG

Ampiasao ny sensor SNMP Custom Advanced miaraka amin'ny OID nomena

## 🐛 Famahana olana

### Olana fahita matetika

1. **Tsy nahazo alalana amin'ny rakitra statistika**

   ```bash
   # Jereo ny fahazoan-dalana amin'ny rakitra
   ls -l /var/cache/bind/named.stats

   # Ahitsio ny fahazoan-dalana
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Efa ampiasaina ny port SNMP**

   ```bash
   # Jereo izay mampiasa ny port 161
   sudo netstat -tulpn | grep 161

   # Mampiasà port hafa ao amin'ny fikirakirana
   port = 1161
   ```

3. **Tsy mahomby ny baiko rndc**

   ```bash
   # Tsapao tanana ny rndc
   rndc stats

   # Jereo ny fikirakirana rndc
   rndc-confgen -a
   ```

4. **Tsy misy statistika voaforona**

   ```bash
   # Alefaso ny statistika ao amin'ny named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Fomba fanitsiana diso (Debug)

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Hevitra momba ny fahaiza-miasa

- **Elanelam-potoana fanadihadiana**: 300 segondra raha tsy voafaritra, amboary araka ny filana fanaraha-maso
- **Faharetan'ny cache**: Tehirizina ao amin'ny cache ny statistika eo anelanelan'ny fanadihadiana mba hampihenana ny enta-mavesatra
- **I/O rakitra**: Tsy vakina ny rakitra statistika raha tsy rehefa ilaina
- **Fampiasana fitadidiana**: Matetika latsaky ny 20MB RSS
- **Fampiasana CPU**: Kely indrindra, miakatra kely mandritra ny fanangonana statistika ihany

## 🤝 Fandraisana anjara

Raisina an-tanan-droa ny fandraisana anjara! Aza misalasala mandefa Pull Request.

1. Ataovy fork ny tahiry
2. Mamoròna sampana endri-javatra (`git checkout -b feature/amazing-feature`)
3. Ataovy commit ny fanovanao (`git commit -m 'feat: add amazing feature'`)
4. Alefaso any amin'ny sampana (`git push origin feature/amazing-feature`)
5. Sokafy ny Pull Request

### Fanomanana fampivoarana

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lisansa

Ity tetikasa ity dia eo ambany Lisansa MIT - jereo ny rakitra [LICENSE](../../../LICENSE) ho an'ny antsipiriany.

## 🔒 Fiarovana

Jereo azafady ny [Politikan'ny Fiarovana](../../../SECURITY.md) ho an'ny antsipiriany momba ny fitaterana lesoka fiarovana.

## 👨💻 Mpanoratra

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Fisaorana

- Ny ekipa mpampivoara BIND9 ho an'ny mpizara DNS mahafinaritra
- Ny fiarahamonina Perl ho an'ny modely SNMP matanjaka
- Ireo mpandray anjara sy mpampiasa ity tetikasa ity

## 📚 Loharano

- [Torolalana BIND9](https://bind9.readthedocs.io/)
- [Torolalana Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Rejistra SNMP OID](http://www.oid-info.com/)
- [Wiki an'ny tetikasa](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Tondrozotra

- [ ] Fanohanana SNMP v3 miaraka amin'ny fanamarinana maha-izy
- [ ] Safidy hafa mpanondrana Prometheus
- [ ] Tabilao fanaraha-maso statistika amin'ny tranonkala
- [ ] Fanohanana kaontenera Docker
- [ ] Script fametrahana mandeha ho azy
- [ ] Fanangonana metrika momba ny fahaiza-miasa
- [ ] Fitahirizana angona ara-tantara
- [ ] Fikirakirana fetra fampandrenesana

---

Raha mila fanazavana fanampiny, tatitra hadisoana, na fangatahana endri-javatra, tsidiho azafady ny [tahiry GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

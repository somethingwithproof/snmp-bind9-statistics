# SNMP BIND9 గణాంకాలు

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · **తెలుగు** · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

నెట్‌వర్క్ మానిటరింగ్ సిస్టమ్‌లతో ఇంటిగ్రేషన్ కోసం SNMP ద్వారా గణాంకాలను బహిర్గతం చేసే BIND9 DNS సర్వర్‌ల కోసం సమగ్రమైన Perl-ఆధారిత పర్యవేక్షణ పరిష్కారం.

## 🚀 అవలోకనం

SNMP BIND9 Statistics అనేది BIND9 యొక్క అంతర్నిర్మిత గణాంకాలు మరియు SNMP-ఆధారిత మానిటరింగ్ మౌలిక సదుపాయాల మధ్య అంతరాన్ని పూడ్చే ఒక సాధనం. ఇది `rndc stats` ఉపయోగించి వివరణాత్మక DNS సర్వర్ మెట్రిక్‌లను సేకరిస్తుంది మరియు SNMP ద్వారా వాటిని బహిర్గతం చేస్తుంది, తద్వారా Nagios, Zabbix, PRTG మరియు ఇతర మానిటరింగ్ ప్లాట్‌ఫారమ్‌లతో అతుకులు లేని ఇంటిగ్రేషన్‌ను అందిస్తుంది.

## ✨ ఫీచర్లు

- 📊 **సమగ్ర గణాంకాల సేకరణ**
  - క్వెరీ రకాలు (A, AAAA, MX, PTR, TXT, మొదలైనవి)
  - ప్రతిస్పందన కోడ్‌లు మరియు లోపం రేట్లు
  - క్యాష్ హిట్/మిస్ నిష్పత్తులు
  - జోన్ బదిలీ గణాంకాలు
  - రిజాల్వర్ పనితీరు మెట్రిక్‌లు

- 🔄 **తెలివైన పోలింగ్**
  - కాన్ఫిగర్ చేయగల పోలింగ్ విరామాలు
  - సిస్టమ్ లోడ్‌ను తగ్గించడానికి క్యాషింగ్ విధానం
  - బలవంతపు రిఫ్రెష్ సామర్థ్యం
  - ఆటోమేటిక్ గణాంకాల ఫైల్ రొటేషన్ నిర్వహణ

- 🛡️ **ఎంటర్‌ప్రైజ్-సిద్ధం**
  - SNMP v2c మద్దతు
  - కస్టమ్ OID మ్యాపింగ్
  - సమగ్ర లోప నిర్వహణ
  - Log4perl తో వివరణాత్మక లాగింగ్
  - గౌరవప్రదమైన షట్‌డౌన్ కోసం సిగ్నల్ నిర్వహణ

- 🔧 **సౌకర్యవంతమైన కాన్ఫిగరేషన్**
  - INI-ఆధారిత కాన్ఫిగరేషన్ ఫైళ్లు
  - ఎన్విరాన్‌మెంట్ వేరియబుల్ మద్దతు
  - కమాండ్-లైన్ పారామీటర్ ఓవర్‌రైడ్‌లు
  - బహుళ BIND9 ఇన్‌స్టెన్స్ మద్దతు

## 📋 అవసరాలు

### సిస్టమ్ అవసరాలు

- **ఆపరేటింగ్ సిస్టమ్**: BIND9 తో కూడిన Linux/Unix
- **Perl**: వెర్షన్ 5.10 లేదా అంతకంటే ఎక్కువ
- **BIND9**: కాన్ఫిగర్ చేయబడి మరియు పనిచేస్తున్న `rndc` తో
- **అధికారాలు**: BIND9 గణాంకాల ఫైల్‌కు రీడ్ యాక్సెస్

### Perl మాడ్యూళ్లు

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

## 📦 ఇన్‌స్టాలేషన్

### GitHub నుండి

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

### Makefile.PL ఉపయోగించి

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ కాన్ఫిగరేషన్

కాన్ఫిగరేషన్ ఫైల్ `config.ini` ని సృష్టించండి:

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

## 🚀 వినియోగం

### ప్రాథమిక వినియోగం

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

### లోకలైజేషన్

CLI వినియోగం మరియు లాగ్ డయాగ్నస్టిక్స్ `SNMP::BIND9::I18n` ద్వారా ఎటువంటి బాహ్య CPAN డిపెండెన్సీలు లేకుండా 45 లోకేల్‌లకు (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) మద్దతు ఇస్తాయి. రిజల్యూషన్ `--lang`, ఆపై `LC_ALL`, `LC_MESSAGES`, మరియు `LANG` ని పాటించి, `en` కి ఫాల్‌బ్యాక్ అవుతుంది. SNMP OIDలు, ప్రోటోకాల్ టోకెన్లు మరియు సంఖ్యా మెట్రిక్ విలువలు అన్ని లోకేల్‌లలో మారకుండా ఉంటాయి.

### సర్వీస్‌గా నడపడం

#### Systemd సర్వీస్

`/etc/systemd/system/bind9-snmp.service` ని సృష్టించండి:

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

సర్వీస్‌ను ఎనేబుల్ చేసి ప్రారంభించండి:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d స్క్రిప్ట్ (పాత సిస్టమ్‌లు)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID మ్యాపింగ్

ఈ సాధనం కింది OID నిర్మాణాన్ని ఉపయోగిస్తుంది:

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

### SNMP ద్వారా క్వెరీ చేయడం

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 పరీక్ష

### యూనిట్ పరీక్షలు

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### ఇంటిగ్రేషన్ పరీక్షలు

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### మాన్యువల్ పరీక్ష

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 మానిటరింగ్ ఇంటిగ్రేషన్

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### PRTG కస్టమ్ సెన్సార్

అందించిన OIDలతో SNMP Custom Advanced సెన్సార్‌ను ఉపయోగించండి

## 🐛 ట్రబుల్‌షూటింగ్

### సాధారణ సమస్యలు

1. **Stats ఫైల్‌పై అనుమతి నిరాకరించబడింది**

   ```bash
   # ఫైల్ అనుమతులను తనిఖీ చేయండి
   ls -l /var/cache/bind/named.stats

   # అనుమతులను సరిచేయండి
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP పోర్ట్ ఇప్పటికే వాడుకలో ఉంది**

   ```bash
   # పోర్ట్ 161 ను ఏది ఉపయోగిస్తుందో తనిఖీ చేయండి
   sudo netstat -tulpn | grep 161

   # కాన్ఫిగ్‌లో ప్రత్యామ్నాయ పోర్ట్ ఉపయోగించండి
   port = 1161
   ```

3. **rndc కమాండ్ విఫలమవుతుంది**

   ```bash
   # rndc ను మాన్యువల్‌గా పరీక్షించండి
   rndc stats

   # rndc కాన్ఫిగరేషన్‌ను తనిఖీ చేయండి
   rndc-confgen -a
   ```

4. **గణాంకాలు రూపొందించబడలేదు**

   ```bash
   # named.conf లో గణాంకాలను ప్రారంభించండి
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### డీబగ్ మోడ్

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 పనితీరు పరిగణనలు

- **పోలింగ్ విరామం**: డిఫాల్ట్ 300 సెకన్లు, మానిటరింగ్ అవసరాలకు అనుగుణంగా సర్దుబాటు చేయండి
- **క్యాష్ వ్యవధి**: లోడ్‌ను తగ్గించడానికి పోల్స్ మధ్య గణాంకాలు క్యాష్ చేయబడతాయి
- **ఫైల్ I/O**: అవసరమైనప్పుడు మాత్రమే Stats ఫైల్ చదవబడుతుంది
- **మెమరీ వినియోగం**: సాధారణంగా 20MB RSS కంటే తక్కువ
- **CPU వినియోగం**: చాలా తక్కువ, గణాంకాల సేకరణ సమయంలో మాత్రమే స్వల్పంగా పెరుగుతుంది

## 🤝 సహకారం

సహకారాలకు స్వాగతం! దయచేసి నిస్సంకోచంగా Pull Request ను సమర్పించండి.

1. రిపోజిటరీని ఫోర్క్ చేయండి
2. మీ ఫీచర్ బ్రాంచ్‌ను సృష్టించండి (`git checkout -b feature/amazing-feature`)
3. మీ మార్పులను కమిట్ చేయండి (`git commit -m 'feat: add amazing feature'`)
4. బ్రాంచ్‌కు పుష్ చేయండి (`git push origin feature/amazing-feature`)
5. Pull Request ను తెరవండి

### డెవలప్‌మెంట్ సెటప్

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 లైసెన్స్

ఈ ప్రాజెక్ట్ MIT లైసెన్స్ కింద లైసెన్స్ చేయబడింది - వివరాల కోసం [LICENSE](../../../LICENSE) ఫైల్‌ను చూడండి.

## 🔒 భద్రత

లోపాలను నివేదించే వివరాల కోసం దయచేసి మా [భద్రతా విధానం](../../../SECURITY.md) చూడండి.

## 👨💻 రచయిత

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 కృతజ్ఞతలు

- అద్భుతమైన DNS సర్వర్ కోసం BIND9 డెవలప్‌మెంట్ బృందానికి
- దృఢమైన SNMP మాడ్యూళ్ల కోసం Perl కమ్యూనిటీకి
- ఈ ప్రాజెక్ట్ సహాయకులు మరియు వినియోగదారులకు

## 📚 వనరులు

- [BIND9 డాక్యుమెంటేషన్](https://bind9.readthedocs.io/)
- [Net::SNMP డాక్యుమెంటేషన్](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID రిజిస్ట్రీ](http://www.oid-info.com/)
- [ప్రాజెక్ట్ Wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ రోడ్‌మ్యాప్

- [ ] ప్రామాణీకరణతో SNMP v3 మద్దతు
- [ ] ప్రత్యామ్నాయ Prometheus ఎక్స్‌పోర్టర్
- [ ] వెబ్-ఆధారిత గణాంకాల డ్యాష్‌బోర్డ్
- [ ] Docker కంటైనర్ మద్దతు
- [ ] ఆటోమేటెడ్ ఇన్‌స్టాలర్ స్క్రిప్ట్
- [ ] పనితీరు మెట్రిక్‌ల సేకరణ
- [ ] చారిత్రక డేటా నిల్వ
- [ ] అలర్ట్ థ్రెషోల్డ్ కాన్ఫిగరేషన్

---

మరింత సమాచారం, బగ్ నివేదికలు లేదా ఫీచర్ అభ్యర్థనల కోసం, దయచేసి [GitHub రిపోజిటరీ](https://github.com/somethingwithproof/snmp-bind9-statistics) ని సందర్శించండి.

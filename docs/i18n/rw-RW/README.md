# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · **Kinyarwanda** · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Igisubizo cyuzuye cy'ikurikirana gikozwe muri Perl cyagenewe seriveri za DNS za BIND9 kigaragaza imibare binyuze kuri SNMP kugira ngo gihuzwe na sisitemu zikurikirana imiyoboro.

## 🚀 Incamake

SNMP BIND9 Statistics ni igikoresho gihuza imibare isanzwe muri BIND9 n'ibikorwaremezo by'ikurikirana bishingiye kuri SNMP. Gikusanya ibipimo birambuye bya seriveri ya DNS hifashishijwe `rndc stats` maze kikabigaragaza binyuze kuri SNMP, bigatuma bishoboka guhuzwa neza n'imbuga z'ikurikirana nka Nagios, Zabbix, PRTG, n'izindi.

## ✨ Ibiranga

- 📊 **Ikusanya ryuzuye ry'imibare**
  - Ubwoko bw'ubusabe (A, AAAA, MX, PTR, TXT, n'ibindi)
  - Kode z'ibisubizo n'igipimo cy'amakosa
  - Igipimo cyo kubona no kubura amakuru muri cache
  - Imibare yo kwimura uduce (zone transfer)
  - Ibipimo by'imikorere ya resolver

- 🔄 **Igenzura ry'ubwenge rihoraho**
  - Intera z'igenzura zishobora kugenwa
  - Uburyo bwa cache bugabanya umutwaro kuri sisitemu
  - Ubushobozi bwo guhatira kuvugurura amakuru
  - Gucunga byikora ihindurwa ry'amadosiye y'imibare

- 🛡️ **Yiteguye gukoreshwa mu bigo binini**
  - Ishyigikira SNMP v2c
  - Igena ryihariye rya OID
  - Gucunga amakosa mu buryo bwuzuye
  - Kwandika amakuru y'imikorere birambuye hamwe na Log4perl
  - Gucunga ibimenyetso (signals) byo gufunga neza serivisi

- 🔧 **Igenamiterere rihindagurika**
  - Amadosiye y'igenamiterere ashingiye kuri INI
  - Ishyigikira impinduka z'ibidukikije
  - Guhindura ibipimo binyuze ku murongo w'amabwiriza
  - Ishyigikira seriveri nyinshi za BIND9 icyarimwe

## 📋 Ibisabwa

### Ibisabwa kuri sisitemu

- **Sisitemu y'imikorere**: Linux/Unix ifite BIND9
- **Perl**: Verisiyo 5.10 cyangwa izisumbuyeho
- **BIND9**: Ifite `rndc` yagenwe neza kandi ikora
- **Uburenganzira**: Uburenganzira bwo gusoma idosiye y'imibare ya BIND9

### Ibice bya Perl

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

## 📦 Gushyiraho porogaramu

### Uvuye kuri GitHub

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

### Ukoresheje Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Igenamiterere

Kora idosiye y'igenamiterere `config.ini`:

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

## 🚀 Imikoreshereze

### Imikoreshereze y'ibanze

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

### Igenandimi

Imikoreshereze ya CLI n'amakuru y'isuzuma mu nyandiko z'imikorere bishyigikira indimi n'uturere 45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) nta bindi bikenerwa byo hanze bya CPAN binyuze muri `SNMP::BIND9::I18n`. Guhitamo ururimi gukurikiza `--lang`, hanyuma `LC_ALL`, `LC_MESSAGES`, na `LANG`, bitakunda hagasubirwa kuri `en`. SNMP OIDs, ibimenyetso bya porotokole, n'imibare y'ibipimo ntibihinduka mu ndimi zose.

### Gukora nka serivisi

#### Serivisi ya Systemd

Kora `/etc/systemd/system/bind9-snmp.service`:

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

Emeza kandi utangize serivisi:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Inyandiko ya Init.d (Sisitemu za kera)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Igena rya SNMP OID

Igikoresho gikoresha imiterere ya OID ikurikira:

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

### Gusaba amakuru binyuze kuri SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Isuzuma

### Isuzuma ry'ibice

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Isuzuma ry'ihuzwa

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Isuzuma ryikorwa n'intoki

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Guhuza n'ibikoresho by'ikurikirana

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Igipimo cyihariye cya PRTG

Koresha igipimo cya SNMP Custom Advanced ukoresheje OIDs zatanzwe

## 🐛 Gukemura ibibazo

### Ibibazo bikunze kugaragara

1. **Kwangirwa uburenganzira ku idosiye y'imibare**

   ```bash
   # Reba uburenganzira bw'idosiye
   ls -l /var/cache/bind/named.stats

   # Kosora uburenganzira
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Umuyoboro (port) wa SNMP urimo gukoreshwa**

   ```bash
   # Reba ikirimo gukoresha port 161
   sudo netstat -tulpn | grep 161

   # Koresha indi port mu igenamiterere
   port = 1161
   ```

3. **Ibwiriza rya rndc rirananiwe**

   ```bash
   # Gerageza rndc n'intoki
   rndc stats

   # Genzura igenamiterere rya rndc
   rndc-confgen -a
   ```

4. **Nta mibare yaremwe**

   ```bash
   # Emeza imibare muri named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Uburyo bwo gusuzuma amakosa (Debug Mode)

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Ibikwiye kwitabwaho ku mikorere

- **Intera y'igenzura**: Ubusanzwe ni amasegonda 300, bihindure ukurikije ibyo ukeneye mu gukurikirana
- **Igihe cyo kubika muri cache**: Imibare ibikwa muri cache hagati y'amagenzura kugira ngo bigabanye umutwaro
- **Gusoma/kwandika amadosiye (File I/O)**: Idosiye y'imibare isomwa gusa iyo bikenewe
- **Ikoreshwa ry'ububiko (Memory)**: Ubusanzwe riri munsi ya 20MB RSS
- **Ikoreshwa rya CPU**: Ni rito cyane, rizamuka gusa mu gihe cyo gukusanya imibare

## 🤝 Gutanga umusanzu

Umusanzu wawe urakenewe kandi urishimirwa! Ntuzuyaze kohereza Pull Request.

1. Kora kopi (Fork) y'ububiko
2. Kora ishami ry'igikorwa cyawe (`git checkout -b feature/amazing-feature`)
3. Bika (Commit) impinduka zawe (`git commit -m 'feat: add amazing feature'`)
4. Ohereza (Push) ku ishami (`git push origin feature/amazing-feature`)
5. Fungura Pull Request

### Itegura ry'iterambere

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Uruhushya

Uyu mushinga ufite uruhushya rwa MIT License - reba idosiye ya [LICENSE](../../../LICENSE) ku bindi bisobanuro.

## 🔒 Umutekano

Nyamuneka reba [Politiki y'umutekano](../../../SECURITY.md) ku bisobanuro birambuye by'uko wamenyesha intege nke z'umutekano.

## 👨💻 Uwanditse

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Ishimwe

- Itsinda riteza imbere BIND9 ku bwa seriveri nziza cyane ya DNS
- Umuryango wa Perl ku bw'ibice bikomeye bya SNMP
- Abatanze umusanzu n'abakoresha uyu mushinga

## 📚 Ibikoresho by'inyongera

- [Inyandiko za BIND9](https://bind9.readthedocs.io/)
- [Inyandiko za Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Urutonde rwa SNMP OID](http://www.oid-info.com/)
- [Wiki y'umushinga](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Gahunda y'iterambere

- [ ] Gushyigikira SNMP v3 ifite iyemeza ry'umwirondoro
- [ ] Ubundi buryo bwa Prometheus exporter
- [ ] Imbonerahamwe y'imibare ikorera ku rubuga
- [ ] Gushyigikira kontineri ya Docker
- [ ] Inyandiko yikora ishyiraho porogaramu
- [ ] Gukusanya ibipimo by'imikorere
- [ ] Kubika amateka y'amakuru
- [ ] Kugena imipaka y'imbuzi

---

Ku bindi bisobanuro, kumenyesha amakosa, cyangwa gusaba ibikorwa bishya, nyamuneka sura [ububiko bwa GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

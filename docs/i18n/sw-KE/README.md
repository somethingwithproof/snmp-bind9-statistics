# Takwimu za SNMP za BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · **Kiswahili** · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Suluhisho kamili la ufuatiliaji linalotegemea Perl kwa seva za DNS za BIND9 ambalo huonyesha takwimu kupitia SNMP kwa ajili ya kuunganishwa na mifumo ya ufuatiliaji wa mtandao.

## 🚀 Muhtasari

SNMP BIND9 Statistics ni zana inayounganisha takwimu za ndani za BIND9 na miundombinu ya ufuatiliaji inayotegemea SNMP. Hukusanya vipimo vya kina vya seva ya DNS kwa kutumia `rndc stats` na kuvionyesha kupitia SNMP, na kuwezesha uunganishaji rahisi na mifumo ya ufuatiliaji kama Nagios, Zabbix, PRTG, na mingineyo.

## ✨ Vipengele

- 📊 **Ukusanyaji Kamili wa Takwimu**
  - Aina za maombi (A, AAAA, MX, PTR, TXT, n.k.)
  - Misimbo ya majibu na viwango vya hitilafu
  - Uwiano wa kupata na kukosa kwenye kache
  - Takwimu za uhamisho wa kanda
  - Vipimo vya utendakazi wa kitatuzi

- 🔄 **Uchunguzi Mahiri**
  - Vipindi vya uchunguzi vinavyoweza kusanidiwa
  - Mbinu ya kache kupunguza mzigo wa mfumo
  - Uwezo wa kulazimisha usasishaji
  - Ushughulikiaji otomatiki wa mzunguko wa faili ya takwimu

- 🛡️ **Tayari kwa Matumizi ya Biashara**
  - Usaidizi wa SNMP v2c
  - Upangaji maalum wa OID
  - Ushughulikiaji wa kina wa hitilafu
  - Uwekaji kumbukumbu wa kina kwa kutumia Log4perl
  - Ushughulikiaji wa ishara kwa ajili ya kuzima kwa utaratibu

- 🔧 **Usanidi Unaonyumbulika**
  - Faili za usanidi za muundo wa INI
  - Usaidizi wa vibadala vya mazingira
  - Kubadilisha vigezo kupitia mstari wa amri
  - Usaidizi wa nakala nyingi za BIND9

## 📋 Mahitaji

### Mahitaji ya Mfumo

- **Mfumo wa Uendeshaji**: Linux/Unix yenye BIND9
- **Perl**: Toleo la 5.10 au jipya zaidi
- **BIND9**: Ikiwa na `rndc` iliyosanidiwa na inayofanya kazi
- **Ruhusa**: Ruhusa ya kusoma faili ya takwimu ya BIND9

### Moduli za Perl

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

## 📦 Usakinishaji

### Kutoka GitHub

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

### Kwa Kutumia Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Usanidi

Unda faili ya usanidi `config.ini`:

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

### Vibadala vya Mazingira

Unaweza kubadilisha usanidi kwa kutumia vibadala vya mazingira:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Matumizi

### Matumizi ya Msingi

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

### Ujanibishaji

Matumizi ya CLI na uchunguzi wa kumbukumbu yanasaidia lugha 45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) bila utegemezi wa nje wa CPAN kupitia `SNMP::BIND9::I18n`. Uchaguzi huheshimu `--lang`, kisha `LC_ALL`, `LC_MESSAGES`, na `LANG`, na kurejea kwenye `en`. OID za SNMP, tokeni za itifaki, na thamani za nambari za vipimo hubaki bila kubadilika katika lugha zote.

### Kuendesha kama Huduma

#### Huduma ya Systemd

Unda `/etc/systemd/system/bind9-snmp.service`:

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

Washa na uanzishe huduma:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Hati ya Init.d (Mifumo ya Zamani)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Upangaji wa SNMP OID

Zana hutumia muundo ufuatao wa OID:

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

### Kuuliza kupitia SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Majaribio

### Majaribio ya Sehemu

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Majaribio ya Muunganisho

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Majaribio ya Kawaida

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Uunganishaji wa Ufuatiliaji

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Kigezo cha Zabbix

Ingiza kigezo cha Zabbix kilichotolewa kutoka `contrib/zabbix/bind9-snmp-template.xml`

### Kihisi Maalum cha PRTG

Tumia kihisi cha SNMP Custom Advanced pamoja na OID zilizotolewa

## 🐛 Utatuzi wa Matatizo

### Matatizo ya Kawaida

1. **Ruhusa Imekataliwa kwenye Faili ya Takwimu**

   ```bash
   # Kagua ruhusa za faili
   ls -l /var/cache/bind/named.stats

   # Rekebisha ruhusa
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Mlango wa SNMP Tayari Unatumika**

   ```bash
   # Kagua kinachotumia mlango 161
   sudo netstat -tulpn | grep 161

   # Tumia mlango mbadala katika usanidi
   port = 1161
   ```

3. **Amri ya rndc Inashindwa**

   ```bash
   # Jaribu rndc moja kwa moja
   rndc stats

   # Kagua usanidi wa rndc
   rndc-confgen -a
   ```

4. **Hakuna Takwimu Zinazozalishwa**

   ```bash
   # Washa takwimu katika named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Hali ya Uchunguzi

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Mazingatio ya Utendakazi

- **Muda wa Uchunguzi**: Chaguo-msingi ni sekunde 300, rekebisha kulingana na mahitaji ya ufuatiliaji
- **Muda wa Kache**: Takwimu huhifadhiwa kwenye kache kati ya uchunguzi ili kupunguza mzigo
- **Uendeshaji wa Faili**: Faili ya takwimu husomwa tu inapohitajika
- **Matumizi ya Kumbukumbu**: Kwa kawaida chini ya 20MB RSS
- **Matumizi ya CPU**: Ndogo sana, huongezeka tu wakati wa ukusanyaji wa takwimu

## 🤝 Kuchangia

Michango inakaribishwa! Tafadhali jisikie huru kuwasilisha Pull Request.

1. Tengeneza nakala ya hazina
2. Unda tawi lako la kipengele (`git checkout -b feature/amazing-feature`)
3. Weka mabadiliko yako kwenye commit (`git commit -m 'feat: add amazing feature'`)
4. Sukuma kwenye tawi (`git push origin feature/amazing-feature`)
5. Fungua Pull Request

### Usanidi wa Uendelezaji

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Leseni

Mradi huu umeidhinishwa chini ya Leseni ya MIT - tazama faili ya [LICENSE](../../../LICENSE) kwa maelezo zaidi.

## 🔒 Usalama

Tafadhali tazama [Sera yetu ya Usalama](../../../SECURITY.md) kwa maelezo kuhusu kuripoti udhaifu wa kiusalama.

## 👨💻 Mwandishi

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Shukrani

- Timu ya uendelezaji ya BIND9 kwa seva bora ya DNS
- Jumuiya ya Perl kwa moduli imara za SNMP
- Wachangiaji na watumiaji wa mradi huu

## 📚 Rasilimali

- [Nyaraka za BIND9](https://bind9.readthedocs.io/)
- [Nyaraka za Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Sajili ya SNMP OID](http://www.oid-info.com/)
- [Wiki ya Mradi](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Ramani ya Njia

- [ ] Usaidizi wa SNMP v3 pamoja na uthibitishaji
- [ ] Mbadala wa Prometheus exporter
- [ ] Dashibodi ya wavuti ya takwimu
- [ ] Usaidizi wa kontena ya Docker
- [ ] Hati ya usakinishaji otomatiki
- [ ] Ukusanyaji wa vipimo vya utendakazi
- [ ] Uhifadhi wa data ya kihistoria
- [ ] Usanidi wa viwango vya arifa

---

Kwa maelezo zaidi, kuripoti hitilafu, au kuomba vipengele vipya, tafadhali tembelea [hazina ya GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

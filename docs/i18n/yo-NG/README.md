# Àwọn Ìṣirò SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · **Yorùbá** · [isiZulu](../zu-ZA/README.md)

</details>

Ojútùú ìṣàbójútó pípé tí ó dá lórí Perl fún àwọn ẹ̀rọ ìpèsè DNS BIND9 tí ó ń ṣí àwọn ìṣirò payá nípasẹ̀ SNMP fún ìṣọ̀kan pẹ̀lú àwọn ètò ìṣàbójútó nẹ́tíwọ́ọ̀kì.

## 🚀 Àkótán

SNMP BIND9 Statistics jẹ́ irinṣẹ́ kan tí ó so àlàfo láàárín àwọn ìṣirò tí a kọ́ sínú BIND9 àti ètò ìṣàbójútó tí ó dá lórí SNMP pọ̀. Ó ń kó àwọn òṣùwọ̀n ẹ̀rọ ìpèsè DNS kíkún jọ nípa lílo `rndc stats`, ó sì ń ṣí wọn payá nípasẹ̀ SNMP, tí ó ń jẹ́ kí ìṣọ̀kan rọrùn pẹ̀lú àwọn pèpéle ìṣàbójútó bíi Nagios, Zabbix, PRTG, àti àwọn mìíràn.

## ✨ Àwọn Ẹ̀yà Pàtàkì

- 📊 **Ìkójọpọ̀ Ìṣirò Kíkún**
  - Àwọn irú ìbéèrè (A, AAAA, MX, PTR, TXT, àti bẹ́ẹ̀ bẹ́ẹ̀ lọ)
  - Àwọn kóòdù ìdáhùn àti ìwọ̀n àṣìṣe
  - Àwọn ìpín ìbámupọ̀/ìpàdánù ìpamọ́-ìgbà-díẹ̀
  - Àwọn ìṣirò ìgbéjáde agbègbè
  - Àwọn òṣùwọ̀n ìṣiṣẹ́ olùtúmọ̀

- 🔄 **Ìbéèrè Olóye**
  - Àwọn àlàfo àkókò ìbéèrè tí a lè ṣètò
  - Ètò ìpamọ́-ìgbà-díẹ̀ láti dín ẹrù ètò kù
  - Agbára ìsọdọ̀tun pẹ̀lú ipá
  - Ìṣàkóso aládàáṣe fún yíyípo fáìlì ìṣirò

- 🛡️ **Ṣetán fún Ilé-iṣẹ́ Ńlá**
  - Àtìlẹ́yìn SNMP v2c
  - Ìtọ́kasí OID àdáni
  - Ìṣàkóso àṣìṣe kíkún
  - Ìkọsílẹ̀ àkọsílẹ̀ kíkún pẹ̀lú Log4perl
  - Ìṣàkóso àmì ìfiranṣẹ́ fún pípa ètò ní ìrọ̀rùn

- 🔧 **Ìṣètò Tí Ó Rọrùn Láti Yí Padà**
  - Àwọn fáìlì ìṣètò tí ó dá lórí INI
  - Àtìlẹ́yìn àwọn oníyàtọ̀ àyíká
  - Àwọn àyípadà pàrámítà láìnì àṣẹ
  - Àtìlẹ́yìn fún ọ̀pọ̀lọpọ̀ ẹ̀dà BIND9

## 📋 Àwọn Ohun Tí A Nílò

### Àwọn Ohun Tí Ètò Nílò

- **Ètò Ìṣiṣẹ́**: Linux/Unix pẹ̀lú BIND9
- **Perl**: Ẹ̀yà 5.10 tàbí ga jù bẹ́ẹ̀ lọ
- **BIND9**: Pẹ̀lú `rndc` tí a ti ṣètò tí ó sì ń ṣiṣẹ́
- **Àwọn Àṣẹ**: Àṣẹ kíkà sí fáìlì ìṣirò BIND9

### Àwọn Mọ́dùlù Perl

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

## 📦 Ìfisílé

### Láti GitHub

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

### Nípa Lílo Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Ìṣètò

Ṣẹ̀dá fáìlì ìṣètò kan `config.ini`:

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

## 🚀 Ìlò

### Ìlò Ìpìlẹ̀

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

### Ìtúmọ̀ Èdè Àdúgbò

Ìlò CLI àti àwọn àyẹ̀wò àkọsílẹ̀ ń ṣe àtìlẹ́yìn fún àwọn èdè àdúgbò 45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) láìsí ìgbẹ́kẹ̀lé CPAN ìta kankan nípasẹ̀ `SNMP::BIND9::I18n`. Ìpinnu èdè máa ń bọ̀wọ̀ fún `--lang`, lẹ́yìn náà `LC_ALL`, `LC_MESSAGES`, àti `LANG`, tí ó sì ń padà sí `en`. Àwọn OID SNMP, àwọn àmì ìlànà ìbánisọ̀rọ̀, àti àwọn iye òṣùwọ̀n nọ́ńbà kò yí padà káàkiri gbogbo àwọn èdè àdúgbò.

### Ṣíṣiṣẹ́ Gẹ́gẹ́ bí Iṣẹ́ Ètò

#### Iṣẹ́ Systemd

Ṣẹ̀dá `/etc/systemd/system/bind9-snmp.service`:

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

Tan iṣẹ́ náà kí o sì bẹ̀rẹ̀ rẹ̀:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Ìwé-àṣẹ Init.d (Àwọn Ètò Àtijọ́)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Ìtọ́kasí OID SNMP

Irinṣẹ́ náà ń lo ìṣètò OID ìsàlẹ̀ yìí:

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

### Ìbéèrè Nípasẹ̀ SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Ìdánwò

### Àwọn Ìdánwò Ẹyọkan

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Àwọn Ìdánwò Ìṣọ̀kan

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Ìdánwò Aláfọwọ́ṣe

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Ìṣọ̀kan Ìṣàbójútó

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Sẹ́ńsọ̀ Àdáni PRTG

Lo sẹ́ńsọ̀ SNMP Custom Advanced pẹ̀lú àwọn OID tí a pèsè

## 🐛 Ìyanjú Ìṣòro

### Àwọn Ìṣòro Tí Ó Wọ́pọ̀

1. **A Kọ Àṣẹ Lórí Fáìlì Ìṣirò**

   ```bash
   # Ṣàyẹ̀wò àwọn àṣẹ fáìlì
   ls -l /var/cache/bind/named.stats

   # Tún àwọn àṣẹ ṣe
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Èbúté SNMP Ti Wà Ní Ìlò Tẹ́lẹ̀**

   ```bash
   # Ṣàyẹ̀wò ohun tí ó ń lo èbúté 161
   sudo netstat -tulpn | grep 161

   # Lo èbúté mìíràn nínú ìṣètò
   port = 1161
   ```

3. **Àṣẹ rndc Kùnà**

   ```bash
   # Dán rndc wò pẹ̀lú ọwọ́
   rndc stats

   # Ṣàyẹ̀wò ìṣètò rndc
   rndc-confgen -a
   ```

4. **Kò Sí Àwọn Ìṣirò Tí A Ṣẹ̀dá**

   ```bash
   # Tan àwọn ìṣirò nínú named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Ipò Àyẹ̀wò Àṣìṣe

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Àwọn Ìrònú Lórí Ìṣiṣẹ́

- **Àlàfo Àkókò Ìbéèrè**: Àìyípadà jẹ́ ìṣẹ́jú-àáyá 300, ṣàtúnṣe ní ìbámu pẹ̀lú àwọn àìní ìṣàbójútó
- **Àkókò Ìpamọ́-ìgbà-díẹ̀**: A máa ń fi àwọn ìṣirò pamọ́ láàárín àwọn ìbéèrè láti dín ẹrù kù
- **Fáìlì I/O**: A máa ń ka fáìlì ìṣirò nìkan nígbà tí ó bá pọn dandan
- **Ìlò Ìrántí**: Lọ́pọ̀ ìgbà kò ju 20MB RSS lọ
- **Ìlò CPU**: Kékeré ni, ó máa ń gòkè díẹ̀ ní àkókò ìkójọpọ̀ ìṣirò nìkan

## 🤝 Ìkópa

A gbà àwọn ìkópa tọwọ́tẹsẹ̀! Jọ̀wọ́ ní òmìnira láti fi Pull Request ránṣẹ́.

1. Ṣe fork ibi-ìpamọ́ náà
2. Ṣẹ̀dá ẹ̀ka ẹ̀yà pàtàkì rẹ (`git checkout -b feature/amazing-feature`)
3. Fi àwọn àyípadà rẹ sílẹ̀ (`git commit -m 'feat: add amazing feature'`)
4. Tì í sókè sí ẹ̀ka náà (`git push origin feature/amazing-feature`)
5. Ṣí Pull Request kan

### Ìṣètò Ìdàgbàsókè

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Ìwé-àṣẹ

Iṣẹ́ àkànṣe yìí wà lábẹ́ Ìwé-àṣẹ MIT - wo fáìlì [LICENSE](../../../LICENSE) fún àwọn àlàyé kíkún.

## 🔒 Ààbò

Jọ̀wọ́ wo [Ìlànà Ààbò](../../../SECURITY.md) wa fún àwọn àlàyé lórí bí a ṣe ń ròyìn àwọn àléébù ààbò.

## 👨💻 Òǹkọ̀wé

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Ìdúpẹ́

- Ẹgbẹ́ ìdàgbàsókè BIND9 fún ẹ̀rọ ìpèsè DNS tí ó tayọ
- Àwùjọ Perl fún àwọn mọ́dùlù SNMP tí ó lágbára
- Àwọn olùkópa àti àwọn olùmúlò iṣẹ́ àkànṣe yìí

## 📚 Àwọn Ohun Èlò Ìtọ́kasí

- [Ìwé Ìtọ́kasí BIND9](https://bind9.readthedocs.io/)
- [Ìwé Ìtọ́kasí Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Ìforúkọsílẹ̀ OID SNMP](http://www.oid-info.com/)
- [Wiki Iṣẹ́ Àkànṣe](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Ètò Ọjọ́ Iwájú

- [ ] Àtìlẹ́yìn SNMP v3 pẹ̀lú ìdánimọ̀
- [ ] Àyípadà olùgbéjáde Prometheus
- [ ] Pátákó ìṣirò orí wẹ́ẹ̀bù
- [ ] Àtìlẹ́yìn àpótí Docker
- [ ] Ìwé-àṣẹ olùfisílé aládàáṣe
- [ ] Ìkójọpọ̀ àwọn òṣùwọ̀n ìṣiṣẹ́
- [ ] Ìpamọ́ dátà ìtàn
- [ ] Ìṣètò ààlà ìtànijí

---

Fún àlàyé síwájú sí i, ìròyìn àṣìṣe, tàbí àwọn ìbéèrè ẹ̀yà pàtàkì, jọ̀wọ́ ṣèbẹ̀wò sí [ibi-ìpamọ́ GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

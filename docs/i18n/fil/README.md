# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · **Filipino** · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Isang komprehensibong solusyon sa pagmomonitor na nakabase sa Perl para sa mga BIND9 DNS server na naglalantad ng mga istatistika sa pamamagitan ng SNMP para sa integrasyon sa mga sistema ng pagmomonitor ng network.

## 🚀 Pangkalahatang-ideya

Ang SNMP BIND9 Statistics ay isang tool na nag-uugnay sa mga built-in na istatistika ng BIND9 at sa imprastraktura ng pagmomonitor na nakabase sa SNMP. Kinokolekta nito ang mga detalyadong metric ng DNS server gamit ang `rndc stats` at inilalantad ang mga ito sa pamamagitan ng SNMP, na nagbibigay-daan sa maayos na integrasyon sa mga platform ng pagmomonitor tulad ng Nagios, Zabbix, PRTG, at iba pa.

## ✨ Mga Tampok

- 📊 **Komprehensibong Pangongolekta ng Istatistika**
  - Mga uri ng query (A, AAAA, MX, PTR, TXT, atbp.)
  - Mga response code at rate ng error
  - Mga ratio ng cache hit/miss
  - Mga istatistika ng zone transfer
  - Mga metric sa pagganap ng resolver

- 🔄 **Matalinong Polling**
  - Nako-configure na mga agwat ng polling
  - Mekanismo ng pag-cache upang mabawasan ang load ng system
  - Kakayahang mag-force refresh
  - Awtomatikong pangangasiwa sa pag-ikot (rotation) ng statistics file

- 🛡️ **Handa para sa Enterprise**
  - Suporta sa SNMP v2c
  - Custom na pagmamapa ng OID
  - Komprehensibong pangangasiwa ng error
  - Detalyadong pag-log gamit ang Log4perl
  - Pangangasiwa ng signal para sa maayos na pag-shutdown

- 🔧 **Flexible na Configuration**
  - Mga configuration file na nakabase sa INI
  - Suporta sa environment variable
  - Mga command-line parameter override
  - Suporta sa maraming BIND9 instance

## 📋 Mga Kinakailangan

### Mga Kinakailangan sa System

- **Operating System**: Linux/Unix na may BIND9
- **Perl**: Bersyon 5.10 o mas bago
- **BIND9**: May `rndc` na naka-configure at gumagana
- **Mga Pribilehiyo**: Read access sa BIND9 statistics file

### Mga Perl Module

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

## 📦 Pag-install

### Mula sa GitHub

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

### Gamit ang Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Configuration

Gumawa ng configuration file na `config.ini`:

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

### Mga Environment Variable

Maaari mong i-override ang configuration gamit ang mga environment variable:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Paggamit

### Pangunahing Paggamit

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

### Lokalisasyon

Sinusuportahan ng paggamit ng CLI at mga log diagnostic ang 45 locale (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) nang walang anumang panlabas na CPAN dependency sa pamamagitan ng `SNMP::BIND9::I18n`. Sinusunod ng resolution ang `--lang`, pagkatapos ay ang `LC_ALL`, `LC_MESSAGES`, at `LANG`, at bumabalik sa `en` kung wala. Ang mga SNMP OID, protocol token, at mga numerical na halaga ng metric ay nananatiling hindi nagbabago sa lahat ng locale.

### Pagpapatakbo bilang Service

#### Systemd Service

Gawin ang `/etc/systemd/system/bind9-snmp.service`:

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

I-enable at simulan ang service:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d Script (Mga Lumang System)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Pagmamapa ng SNMP OID

Gumagamit ang tool ng sumusunod na istruktura ng OID:

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

### Pag-query sa pamamagitan ng SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Pagsubok

### Mga Unit Test

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Mga Integration Test

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Manu-manong Pagsubok

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Integrasyon sa Pagmomonitor

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix Template

I-import ang ibinigay na Zabbix template mula sa `contrib/zabbix/bind9-snmp-template.xml`

### PRTG Custom Sensor

Gamitin ang SNMP Custom Advanced sensor kasama ang mga ibinigay na OID

## 🐛 Pag-troubleshoot

### Mga Karaniwang Isyu

1. **Tinanggihan ang Pahintulot sa Stats File**

   ```bash
   # Suriin ang mga pahintulot ng file
   ls -l /var/cache/bind/named.stats

   # Ayusin ang mga pahintulot
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Ginagamit Na ang SNMP Port**

   ```bash
   # Tingnan kung ano ang gumagamit ng port 161
   sudo netstat -tulpn | grep 161

   # Gumamit ng alternatibong port sa config
   port = 1161
   ```

3. **Nabigo ang Command na rndc**

   ```bash
   # Subukan ang rndc nang manu-mano
   rndc stats

   # Suriin ang configuration ng rndc
   rndc-confgen -a
   ```

4. **Walang Nabubuong Istatistika**

   ```bash
   # I-enable ang mga istatistika sa named.conf
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

## 📈 Mga Pagsasaalang-alang sa Pagganap

- **Polling Interval**: Default na 300 segundo, i-adjust batay sa mga pangangailangan sa pagmomonitor
- **Tagal ng Cache**: Ang mga istatistika ay naka-cache sa pagitan ng mga poll upang mabawasan ang load
- **File I/O**: Binabasa lamang ang stats file kapag kinakailangan
- **Paggamit ng Memory**: Karaniwang mas mababa sa 20MB RSS
- **Paggamit ng CPU**: Napakaliit, tumataas lamang habang kinokolekta ang mga istatistika

## 🤝 Pag-aambag

Malugod na tinatanggap ang mga kontribusyon! Huwag mag-atubiling magsumite ng Pull Request.

1. I-fork ang repository
2. Gumawa ng iyong feature branch (`git checkout -b feature/amazing-feature`)
3. I-commit ang iyong mga pagbabago (`git commit -m 'feat: add amazing feature'`)
4. I-push sa branch (`git push origin feature/amazing-feature`)
5. Magbukas ng Pull Request

### Setup ng Development

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lisensya

Ang proyektong ito ay lisensyado sa ilalim ng MIT License - tingnan ang [LICENSE](../../../LICENSE) file para sa mga detalye.

## 🔒 Seguridad

Pakitingnan ang aming [Patakaran sa Seguridad](../../../SECURITY.md) para sa mga detalye sa pag-uulat ng mga kahinaan.

## 👨💻 May-akda

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Mga Pasasalamat

- Development team ng BIND9 para sa napakahusay na DNS server
- Komunidad ng Perl para sa matibay na mga SNMP module
- Mga nag-ambag at gumagamit ng proyektong ito

## 📚 Mga Mapagkukunan

- [Dokumentasyon ng BIND9](https://bind9.readthedocs.io/)
- [Dokumentasyon ng Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID Registry](http://www.oid-info.com/)
- [Wiki ng Proyekto](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Roadmap

- [ ] Suporta sa SNMP v3 na may authentication
- [ ] Alternatibong Prometheus exporter
- [ ] Web-based na dashboard ng istatistika
- [ ] Suporta sa Docker container
- [ ] Automated installer script
- [ ] Pangongolekta ng mga performance metric
- [ ] Imbakan ng makasaysayang data
- [ ] Configuration ng mga alert threshold

---

Para sa karagdagang impormasyon, mga ulat ng bug, o mga hiling sa tampok, pakibisita ang [GitHub repository](https://github.com/somethingwithproof/snmp-bind9-statistics).

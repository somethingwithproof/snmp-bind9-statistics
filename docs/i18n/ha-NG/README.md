# Ƙididdigar SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · **Hausa** · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Cikakkiyar hanyar sa ido mai tushe a Perl don sabar DNS ta BIND9 wadda ke bayyana ƙididdiga ta hanyar SNMP don haɗawa da tsarin sa ido kan hanyar sadarwa.

## 🚀 Taƙaitaccen Bayani

SNMP BIND9 Statistics kayan aiki ne da ke haɗa ƙididdigar asali ta BIND9 da tsarin sa ido mai tushe a SNMP. Yana tattara cikakkun ma'aunan sabar DNS ta amfani da `rndc stats` kuma yana bayyana su ta hanyar SNMP, wanda ke ba da damar haɗuwa cikin sauƙi da dandamalin sa ido kamar Nagios, Zabbix, PRTG, da sauransu.

## ✨ Fasaloli

- 📊 **Tattara Cikakkiyar Ƙididdiga**
  - Nau'o'in tambayoyi (A, AAAA, MX, PTR, TXT, da sauransu)
  - Lambobin amsa da adadin kurakurai
  - Matsakaicin samu ko rashin samu a ajiyar wucin gadi (cache)
  - Ƙididdigar canja wurin yanki (zone transfer)
  - Ma'aunan aikin mai warware sunaye (resolver)

- 🔄 **Binciken Lokaci-lokaci Mai Wayo**
  - Tazarar bincike da za a iya ƙayyadewa
  - Tsarin ajiya ta wucin gadi (caching) don rage nauyin tsari
  - Ikon tilasta sabuntawa
  - Sarrafa jujjuya fayil ɗin ƙididdiga ta atomatik

- 🛡️ **Shirye don Manyan Kamfanoni**
  - Goyon bayan SNMP v2c
  - Taswirar OID ta musamman
  - Cikakken tsarin sarrafa kurakurai
  - Cikakken rikodin bayanai da Log4perl
  - Sarrafa sigina don kashewa cikin tsari

- 🔧 **Saiti Mai Sauƙin Canzawa**
  - Fayilolin saiti masu tsarin INI
  - Goyon bayan masu canjin muhalli
  - Sauya saiti ta sigogin layin umarni
  - Goyon bayan sabar BIND9 da yawa

## 📋 Abubuwan da ake Buƙata

### Abubuwan da Tsari ke Buƙata

- **Tsarin Aiki**: Linux/Unix tare da BIND9
- **Perl**: Siga 5.10 ko sama
- **BIND9**: Tare da `rndc` da aka saita kuma yana aiki
- **Izini**: Ikon karanta fayil ɗin ƙididdigar BIND9

### Manhajojin Perl

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

## 📦 Girkawa

### Daga GitHub

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

### Amfani da Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Saiti

Ƙirƙiri fayil ɗin saiti `config.ini`:

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

### Masu Canjin Muhalli

Za ka iya sauya saiti ta amfani da masu canjin muhalli:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Amfani

### Amfani na Asali

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

### Fassarar Harsuna

Amfanin CLI da bayanan binciken rikodi suna goyon bayan harsuna da yankuna 45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ba tare da wani abin dogaro na CPAN na waje ba ta hanyar `SNMP::BIND9::I18n`. Zaɓin harshe yana bin `--lang`, sannan `LC_ALL`, `LC_MESSAGES`, da `LANG`, tare da komawa ga `en` idan ba a same su ba. SNMP OIDs, alamomin ƙa'ida, da ƙimomin ma'aunai na lambobi ba sa canzawa a dukkan harsuna.

### Gudanarwa a Matsayin Sabis

#### Sabis na Systemd

Ƙirƙiri `/etc/systemd/system/bind9-snmp.service`:

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

Kunna kuma ka fara sabis ɗin:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Rubutun Init.d (Tsofaffin Tsare-tsare)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Taswirar SNMP OID

Kayan aikin yana amfani da tsarin OID mai zuwa:

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

### Tambaya ta hanyar SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Gwaji

### Gwajin Sassa (Unit Tests)

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Gwajin Haɗin Gwiwa (Integration Tests)

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Gwaji da Hannu

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Haɗawa da Tsarin Sa Ido

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Samfurin Zabbix

Shigo da samfurin Zabbix da aka bayar daga `contrib/zabbix/bind9-snmp-template.xml`

### Na'urar Auna ta Musamman ta PRTG

Yi amfani da na'urar auna ta SNMP Custom Advanced tare da OIDs da aka bayar

## 🐛 Warware Matsaloli

### Matsaloli na Yau da Kullum

1. **An Hana Izini a Fayil ɗin Ƙididdiga**

   ```bash
   # Duba izinin fayil
   ls -l /var/cache/bind/named.stats

   # Gyara izini
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Tuni Ana Amfani da Ƙofar SNMP**

   ```bash
   # Duba abin da ke amfani da ƙofa 161
   sudo netstat -tulpn | grep 161

   # Yi amfani da wata ƙofa daban a cikin saiti
   port = 1161
   ```

3. **Umarnin rndc Ya Kasa Aiki**

   ```bash
   # Gwada rndc da hannu
   rndc stats

   # Duba saitin rndc
   rndc-confgen -a
   ```

4. **Ba a Ƙirƙiri Ƙididdiga Ba**

   ```bash
   # Kunna ƙididdiga a cikin named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Yanayin Binciken Matsala (Debug Mode)

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Abubuwan Lura Kan Aiki

- **Tazarar Bincike**: Tsohuwar ita ce daƙiƙa 300, daidaita gwargwadon buƙatun sa ido
- **Tsawon Lokacin Ajiyar Wucin Gadi (Cache)**: Ana adana ƙididdiga tsakanin bincike don rage nauyi
- **Karanta/Rubuta Fayil (File I/O)**: Ana karanta fayil ɗin ƙididdiga ne kawai lokacin da ake buƙata
- **Amfanin Ƙwaƙwalwar Ajiya**: Yawanci ƙasa da 20MB RSS
- **Amfanin CPU**: Ƙarami ne sosai, yana ƙaruwa ne kawai lokacin tattara ƙididdiga

## 🤝 Ba da Gudummawa

Ana maraba da gudummawa! Kada ka ji shakkar tura Pull Request.

1. Yi fork na ma'ajiyar
2. Ƙirƙiri reshen fasalinka (`git checkout -b feature/amazing-feature`)
3. Yi commit na canje-canjenka (`git commit -m 'feat: add amazing feature'`)
4. Tura zuwa reshen (`git push origin feature/amazing-feature`)
5. Buɗe Pull Request

### Saitin Haɓakawa

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lasisi

An ba da lasisin wannan aikin ƙarƙashin MIT License - duba fayil ɗin [LICENSE](../../../LICENSE) don ƙarin bayani.

## 🔒 Tsaro

Da fatan za a duba [Manufar Tsaronmu](../../../SECURITY.md) don cikakken bayani kan bayar da rahoton raunin tsaro.

## 👨💻 Mawallafi

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Godiya

- Ƙungiyar haɓaka BIND9 saboda kyakkyawar sabar DNS
- Al'ummar Perl saboda ƙarfafan manhajojin SNMP
- Masu ba da gudummawa da masu amfani da wannan aikin

## 📚 Hanyoyin Samun Bayani

- [Takardun BIND9](https://bind9.readthedocs.io/)
- [Takardun Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Rijistar SNMP OID](http://www.oid-info.com/)
- [Wiki na Aikin](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Taswirar Aiki

- [ ] Goyon bayan SNMP v3 tare da tantancewa
- [ ] Madadin mai fitarwa na Prometheus
- [ ] Allon ƙididdiga na yanar gizo
- [ ] Goyon bayan kwantena na Docker
- [ ] Rubutun girkawa ta atomatik
- [ ] Tattara ma'aunan aiki
- [ ] Ajiyar bayanan tarihi
- [ ] Saitin iyakokin faɗakarwa

---

Don ƙarin bayani, rahoton kurakurai, ko buƙatar sabon fasali, da fatan za a ziyarci [ma'ajiyar GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

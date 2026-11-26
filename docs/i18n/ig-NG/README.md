# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · **Igbo** · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Ngwọta nlekota zuru oke e ji Perl rụọ maka sava DNS BIND9 nke na-ewepụta ọnụọgụgụ site na SNMP maka njikọta ya na sistemụ nlekota netwọkụ.

## 🚀 Nchịkọta

SNMP BIND9 Statistics bụ ngwaọrụ na-ejikọta ọnụọgụgụ etinyere n'ime BIND9 na akụrụngwa nlekota dabere na SNMP. Ọ na-anakọta metrics sava DNS zuru ezu site n'iji `rndc stats` ma na-ewepụta ha site na SNMP, na-eme ka njikọta dị mfe na ikpo okwu nlekota dị ka Nagios, Zabbix, PRTG, na ndị ọzọ.

## ✨ Atụmatụ

- 📊 **Nchịkọta Ọnụọgụgụ Zuru Oke**
  - Ụdị ajụjụ (A, AAAA, MX, PTR, TXT, na ndị ọzọ)
  - Koodu azịza na ọnụego njehie
  - Ọnụego nchọta/ndapụ nke cache
  - Ọnụọgụgụ mbufe mpaghara (zone transfer)
  - Metrics arụmọrụ nke resolver

- 🔄 **Nlele Oge Niile Nwere Amamihe**
  - Oge nlele enwere ike ịhazi
  - Usoro nchekwa nwa oge (cache) iji belata ibu sistemụ
  - Ikike ime ka ọ dị ọhụrụ n'ike
  - Njikwa akpaaka nke mgbanwe faịlụ ọnụọgụgụ

- 🛡️ **Dị Njikere Maka Ụlọ Ọrụ**
  - Nkwado SNMP v2c
  - Nhazi mapụ OID omenala
  - Njikwa njehie zuru oke
  - Ndekọ zuru ezu site n'iji Log4perl
  - Njikwa akara (signal) maka mgbanyụ dị nwayọọ

- 🔧 **Nhazi Dị Mfe Ịgbanwe**
  - Faịlụ nhazi dabere na INI
  - Nkwado maka mgbanwe gburugburu ebe obibi (environment variables)
  - Mgbanwe paramita site n'ahịrị iwu
  - Nkwado maka ọtụtụ BIND9 na-arụ ọrụ n'otu oge

## 📋 Ihe A Chọrọ

### Ihe Sistemụ Chọrọ

- **Sistemụ Arụmọrụ**: Linux/Unix nwere BIND9
- **Perl**: Ụdị 5.10 ma ọ bụ karịa
- **BIND9**: Nwere `rndc` a haziri ma na-arụ ọrụ
- **Ikike**: Ikike ịgụ faịlụ ọnụọgụgụ BIND9

### Modul Perl

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

## 📦 Nwụnye

### Site na GitHub

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

### Iji Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Nhazi

Mepụta faịlụ nhazi `config.ini`:

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

## 🚀 Ojiji

### Ojiji Mbụ

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

### Nsụgharị Mpaghara

Ojiji CLI na nchọpụta ndekọ na-akwado asụsụ mpaghara 45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) n'enweghị ndabere CPAN ọ bụla dị n'èzí site na `SNMP::BIND9::I18n`. Nchọpụta asụsụ na-asọpụrụ `--lang`, mgbe ahụ `LC_ALL`, `LC_MESSAGES`, na `LANG`, na-alaghachi na `en` ma ọ bụrụ na enweghị. SNMP OIDs, akara usoro nkwurịta okwu, na ọnụọgụ metric anaghị agbanwe n'asụsụ mpaghara niile.

### Ịgba Ya Dị Ka Ọrụ Sistemụ

#### Ọrụ Systemd

Mepụta `/etc/systemd/system/bind9-snmp.service`:

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

Gbanye ma malite ọrụ ahụ:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Edemede Init.d (Sistemụ Ochie)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Nhazi Mapụ SNMP OID

Ngwaọrụ ahụ na-eji nhazi OID ndị a:

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

### Ịjụ Ajụjụ site na SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Nnwale

### Nnwale Nkeji

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Nnwale Njikọta

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Nnwale Aka

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Njikọta Nlekota

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Sensọ Omenala PRTG

Jiri sensọ SNMP Custom Advanced ya na OIDs e nyere

## 🐛 Nchọpụta Nsogbu

### Nsogbu Ndị Na-emekarị

1. **A Jụrụ Ikike na Faịlụ Ọnụọgụgụ**

   ```bash
   # Lelee ikike faịlụ
   ls -l /var/cache/bind/named.stats

   # Dozie ikike
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **A Na-eji Ọdụ SNMP Arụ Ọrụ Ugbu a**

   ```bash
   # Lelee ihe na-eji ọdụ 161
   sudo netstat -tulpn | grep 161

   # Jiri ọdụ ọzọ na nhazi
   port = 1161
   ```

3. **Iwu rndc Na-ada**

   ```bash
   # Nwaa rndc n'aka
   rndc stats

   # Lelee nhazi rndc
   rndc-confgen -a
   ```

4. **Enweghị Ọnụọgụgụ E Mepụtara**

   ```bash
   # Gbanye ọnụọgụgụ na named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Ọnọdụ Nchọpụta Njehie

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Ihe Ndị A Ga-echebara Echiche Maka Arụmọrụ

- **Oge Nlele**: Ndabara bụ sekọnd 300, gbanwee dabere na mkpa nlekota
- **Oge Nchekwa Cache**: A na-echekwa ọnụọgụgụ na cache n'etiti nlele iji belata ibu
- **I/O Faịlụ**: A na-agụ faịlụ ọnụọgụgụ naanị mgbe ọ dị mkpa
- **Ojiji Ebe Nchekwa (Memory)**: Ọ na-abụkarị n'okpuru 20MB RSS
- **Ojiji CPU**: Dị ntakịrị, na-arị elu naanị n'oge nchịkọta ọnụọgụgụ

## 🤝 Ntinye Aka

A na-anabata ntinye aka! Biko nwee obi ụtọ izipu Pull Request.

1. Fork ebe nchekwa ahụ
2. Mepụta alaka atụmatụ gị (`git checkout -b feature/amazing-feature`)
3. Tinye mgbanwe gị na commit (`git commit -m 'feat: add amazing feature'`)
4. Ziga na alaka ahụ (`git push origin feature/amazing-feature`)
5. Mepee Pull Request

### Nhazi Mmepe

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Akwụkwọ Ikike

A nyere ọrụ a ikike n'okpuru MIT License - lee faịlụ [LICENSE](../../../LICENSE) maka nkọwa zuru ezu.

## 🔒 Nchekwa

Biko lee [Amụma Nchekwa](../../../SECURITY.md) anyị maka nkọwa gbasara ịkọ adịghị ike nchekwa.

## 👨💻 Onye Odee

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Ekele

- Ndị otu mmepe BIND9 maka sava DNS magburu onwe ya
- Obodo Perl maka modul SNMP siri ike
- Ndị nyere aka na ndị ọrụ nke ọrụ a

## 📚 Akụrụngwa

- [Akwụkwọ Ntụziaka BIND9](https://bind9.readthedocs.io/)
- [Akwụkwọ Ntụziaka Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Ndebanye Aha SNMP OID](http://www.oid-info.com/)
- [Wiki Ọrụ](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Atụmatụ Ọdịnihu

- [ ] Nkwado SNMP v3 nwere nkwenye njirimara
- [ ] Nhọrọ ọzọ nke Prometheus exporter
- [ ] Bọọdụ nchịkwa ọnụọgụgụ dabere na weebụ
- [ ] Nkwado akpa Docker
- [ ] Edemede nwụnye akpaaka
- [ ] Nchịkọta metrics arụmọrụ
- [ ] Nchekwa data akụkọ ihe mere eme
- [ ] Nhazi ókè ọkwa

---

Maka ozi ndị ọzọ, mkpesa njehie, ma ọ bụ arịrịọ atụmatụ, biko gaa na [ebe nchekwa GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

# SNMP BIND9 புள்ளிவிவரங்கள்

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · **தமிழ்** · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

பிணையக் கண்காணிப்பு அமைப்புகளுடன் ஒருங்கிணைப்பதற்காக SNMP வழியாகப் புள்ளிவிவரங்களை வெளிப்படுத்தும் BIND9 DNS சேவையகங்களுக்கான விரிவான Perl அடிப்படையிலான கண்காணிப்புத் தீர்வு.

## 🚀 கண்ணோட்டம்

SNMP BIND9 Statistics என்பது BIND9 இன் உள்ளமைக்கப்பட்ட புள்ளிவிவரங்களுக்கும் SNMP அடிப்படையிலான கண்காணிப்பு உள்கட்டமைப்பிற்கும் இடையிலான இடைவெளியை இணைக்கும் ஒரு கருவியாகும். இது `rndc stats` ஐப் பயன்படுத்தி விரிவான DNS சேவையக அளவீடுகளைச் சேகரித்து SNMP மூலம் வெளிப்படுத்துகிறது, இதன் மூலம் Nagios, Zabbix, PRTG மற்றும் பிற கண்காணிப்புத் தளங்களுடன் தடையற்ற ஒருங்கிணைப்பைச் செயல்படுத்துகிறது.

## ✨ அம்சங்கள்

- 📊 **விரிவான புள்ளிவிவரச் சேகரிப்பு**
  - வினவல் வகைகள் (A, AAAA, MX, PTR, TXT போன்றவை)
  - பதில் குறியீடுகள் மற்றும் பிழை விகிதங்கள்
  - இடைமாற்றக வெற்றி/தோல்வி விகிதங்கள்
  - மண்டலப் பரிமாற்றப் புள்ளிவிவரங்கள்
  - தீர்வி செயல்திறன் அளவீடுகள்

- 🔄 **அறிவார்ந்த தரவுத் திரட்டல்**
  - கட்டமைக்கக்கூடிய தரவுத் திரட்டல் இடைவெளிகள்
  - கணினிச் சுமையைக் குறைப்பதற்கான இடைமாற்றக வழிமுறை
  - கட்டாயப் புதுப்பித்தல் திறன்
  - தானியங்கிப் புள்ளிவிவரக் கோப்புச் சுழற்சி கையாளுதல்

- 🛡️ **நிறுவனப் பயன்பாட்டிற்குத் தயாரானது**
  - SNMP v2c ஆதரவு
  - தனிப்பயன் OID வரைபடம்
  - விரிவான பிழை கையாளுதல்
  - Log4perl உடன் விரிவான பதிவுசெய்தல்
  - முறையான பணிநிறுத்தத்திற்கான சைகை கையாளுதல்

- 🔧 **நெகிழ்வான கட்டமைப்பு**
  - INI அடிப்படையிலான கட்டமைப்புக் கோப்புகள்
  - சூழல் மாறி ஆதரவு
  - கட்டளை வரி அளவுரு மேலெழுதல்கள்
  - பல BIND9 நிகழ்வுகளுக்கான ஆதரவு

## 📋 தேவைகள்

### கணினித் தேவைகள்

- **இயக்க முறைமை**: BIND9 உடன் கூடிய Linux/Unix
- **Perl**: பதிப்பு 5.10 அல்லது அதற்கு மேல்
- **BIND9**: `rndc` கட்டமைக்கப்பட்டுச் செயல்படும் நிலையில்
- **சலுகைகள்**: BIND9 புள்ளிவிவரக் கோப்பிற்கான வாசிப்பு அணுகல்

### Perl தொகுதிகள்

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

## 📦 நிறுவல்

### GitHub இலிருந்து

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

### Makefile.PL ஐப் பயன்படுத்தி

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ கட்டமைப்பு

`config.ini` என்ற கட்டமைப்புக் கோப்பை உருவாக்கவும்:

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

### சூழல் மாறிகள்

சூழல் மாறிகளைப் பயன்படுத்தி கட்டமைப்பை மேலெழுதலாம்:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 பயன்பாடு

### அடிப்படைப் பயன்பாடு

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

### உள்ளூர்மயமாக்கல்

CLI பயன்பாடு மற்றும் பதிவு கண்டறிதல் தகவல்கள் `SNMP::BIND9::I18n` வழியாக எந்த வெளிப்புற CPAN சார்புகளும் இல்லாமல் 45 மொழி அமைப்புகளை (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ஆதரிக்கின்றன. மொழித் தீர்மானம் `--lang`, பின்னர் `LC_ALL`, `LC_MESSAGES` மற்றும் `LANG` ஆகியவற்றைப் பின்பற்றி, இறுதியில் `en` க்குத் திரும்புகிறது. SNMP OIDகள், நெறிமுறை அடையாளங்கள் மற்றும் எண் அளவீட்டு மதிப்புகள் அனைத்து மொழி அமைப்புகளிலும் மாறாமல் இருக்கும்.

### சேவையாக இயக்குதல்

#### Systemd சேவை

`/etc/systemd/system/bind9-snmp.service` ஐ உருவாக்கவும்:

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

சேவையை இயக்கித் தொடங்கவும்:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d ஸ்கிரிப்ட் (பழைய கணினிகள்)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID வரைபடம்

கருவி பின்வரும் OID கட்டமைப்பைப் பயன்படுத்துகிறது:

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

### SNMP வழியாக வினவுதல்

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 சோதனை

### அலகுச் சோதனைகள்

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### ஒருங்கிணைப்புச் சோதனைகள்

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### கைமுறைச் சோதனை

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 கண்காணிப்பு ஒருங்கிணைப்பு

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix வார்ப்புரு

`contrib/zabbix/bind9-snmp-template.xml` இலிருந்து வழங்கப்பட்ட Zabbix வார்ப்புருவை இறக்குமதி செய்யவும்

### PRTG தனிப்பயன் உணரி

வழங்கப்பட்ட OIDகளுடன் SNMP Custom Advanced உணரியைப் பயன்படுத்தவும்

## 🐛 சிக்கல் தீர்த்தல்

### பொதுவான சிக்கல்கள்

1. **புள்ளிவிவரக் கோப்பில் அனுமதி மறுக்கப்பட்டது**

   ```bash
   # கோப்பு அனுமதிகளைச் சரிபார்க்கவும்
   ls -l /var/cache/bind/named.stats

   # அனுமதிகளைச் சரிசெய்யவும்
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP போர்ட் ஏற்கனவே பயன்பாட்டில் உள்ளது**

   ```bash
   # போர்ட் 161 ஐ எது பயன்படுத்துகிறது எனச் சரிபார்க்கவும்
   sudo netstat -tulpn | grep 161

   # கட்டமைப்பில் மாற்று போர்ட்டைப் பயன்படுத்தவும்
   port = 1161
   ```

3. **rndc கட்டளை தோல்வியடைகிறது**

   ```bash
   # rndc ஐக் கைமுறையாகச் சோதிக்கவும்
   rndc stats

   # rndc கட்டமைப்பைச் சரிபார்க்கவும்
   rndc-confgen -a
   ```

4. **புள்ளிவிவரங்கள் எதுவும் உருவாக்கப்படவில்லை**

   ```bash
   # named.conf இல் புள்ளிவிவரங்களை இயக்கவும்
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### பிழைத்திருத்தப் பயன்முறை

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 செயல்திறன் பரிசீலனைகள்

- **தரவுத் திரட்டல் இடைவெளி**: இயல்புநிலை 300 வினாடிகள், கண்காணிப்புத் தேவைகளுக்கு ஏற்ப சரிசெய்யவும்
- **இடைமாற்றக கால அளவு**: சுமையைக் குறைக்கத் தரவுத் திரட்டல்களுக்கு இடையில் புள்ளிவிவரங்கள் இடைமாற்றகத்தில் சேமிக்கப்படுகின்றன
- **கோப்பு I/O**: தேவைப்படும்போது மட்டுமே புள்ளிவிவரக் கோப்பு படிக்கப்படும்
- **நினைவகப் பயன்பாடு**: பொதுவாக 20MB RSS க்குக் கீழே
- **CPU பயன்பாடு**: மிகக் குறைவு, புள்ளிவிவரச் சேகரிப்பின் போது மட்டுமே சிறிது அதிகரிக்கும்

## 🤝 பங்களிப்பு

பங்களிப்புகள் வரவேற்கப்படுகின்றன! தயங்காமல் ஒரு Pull Request சமர்ப்பிக்கவும்.

1. களஞ்சியத்தை fork செய்யவும்
2. உங்கள் அம்சக் கிளையை உருவாக்கவும் (`git checkout -b feature/amazing-feature`)
3. உங்கள் மாற்றங்களை commit செய்யவும் (`git commit -m 'feat: add amazing feature'`)
4. கிளைக்கு push செய்யவும் (`git push origin feature/amazing-feature`)
5. ஒரு Pull Request திறக்கவும்

### மேம்பாட்டு அமைப்பு

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 உரிமம்

இந்தத் திட்டம் MIT License இன் கீழ் உரிமம் பெற்றுள்ளது - விவரங்களுக்கு [LICENSE](../../../LICENSE) கோப்பைப் பார்க்கவும்.

## 🔒 பாதுகாப்பு

பாதுகாப்புக் குறைபாடுகளைப் புகாரளிப்பது குறித்த விவரங்களுக்கு எங்கள் [பாதுகாப்புக் கொள்கை](../../../SECURITY.md) ஐப் பார்க்கவும்.

## 👨💻 ஆசிரியர்

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 நன்றிகள்

- சிறந்த DNS சேவையகத்திற்காக BIND9 மேம்பாட்டுக் குழுவிற்கு
- வலுவான SNMP தொகுதிகளுக்காக Perl சமூகத்திற்கு
- இந்தத் திட்டத்தின் பங்களிப்பாளர்கள் மற்றும் பயனர்களுக்கு

## 📚 வளங்கள்

- [BIND9 ஆவணங்கள்](https://bind9.readthedocs.io/)
- [Net::SNMP ஆவணங்கள்](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID பதிவகம்](http://www.oid-info.com/)
- [திட்ட விக்கி](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ செயல் திட்டம்

- [ ] அங்கீகாரத்துடன் கூடிய SNMP v3 ஆதரவு
- [ ] மாற்று Prometheus ஏற்றுமதியாளர்
- [ ] வலை அடிப்படையிலான புள்ளிவிவரக் கட்டுப்பாட்டுப் பலகம்
- [ ] Docker கொள்கலன் ஆதரவு
- [ ] தானியங்கி நிறுவி ஸ்கிரிப்ட்
- [ ] செயல்திறன் அளவீடுகள் சேகரிப்பு
- [ ] வரலாற்றுத் தரவு சேமிப்பு
- [ ] எச்சரிக்கை வரம்பு கட்டமைப்பு

---

மேலும் தகவல்கள், பிழை அறிக்கைகள் அல்லது அம்சக் கோரிக்கைகளுக்கு, [GitHub களஞ்சியத்தைப்](https://github.com/somethingwithproof/snmp-bind9-statistics) பார்வையிடவும்.

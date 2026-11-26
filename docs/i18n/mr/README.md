# SNMP BIND9 सांख्यिकी

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · **मराठी** · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

नेटवर्क मॉनिटरिंग सिस्टम्ससह एकत्रीकरणासाठी SNMP द्वारे सांख्यिकी उघड करणारे BIND9 DNS सर्व्हर्ससाठी एक सर्वसमावेशक Perl-आधारित मॉनिटरिंग सोल्यूशन.

## 🚀 विहंगावलोकन

SNMP BIND9 सांख्यिकी हे एक साधन आहे जे BIND9 च्या अंगभूत सांख्यिकी आणि SNMP-आधारित मॉनिटरिंग पायाभूत सुविधांमधील अंतर भरून काढते. हे `rndc stats` वापरून तपशीलवार DNS सर्व्हर मेट्रिक्स संकलित करते आणि SNMP द्वारे ते उपलब्ध करून देते, ज्यामुळे Nagios, Zabbix, PRTG आणि इतर मॉनिटरिंग प्लॅटफॉर्मसह अखंड एकत्रीकरण शक्य होते.

## ✨ वैशिष्ट्ये

- 📊 **सर्वसमावेशक सांख्यिकी संकलन**
  - क्वेरी प्रकार (A, AAAA, MX, PTR, TXT, इ.)
  - प्रतिसाद कोड आणि त्रुटी दर
  - कॅशे हिट/मिस गुणोत्तर
  - झोन ट्रान्सफर सांख्यिकी
  - रिझॉल्व्हर कामगिरी मेट्रिक्स

- 🔄 **बुद्धिमान पोलिंग**
  - कॉन्फिग करण्यायोग्य पोलिंग अंतराल
  - सिस्टम भार कमी करण्यासाठी कॅशिंग यंत्रणा
  - सक्तीचे रीफ्रेश करण्याची क्षमता
  - स्वयंचलित सांख्यिकी फाइल रोटेशन हाताळणी

- 🛡️ **एंटरप्राइझ-रेडी**
  - SNMP v2c समर्थन
  - कस्टम OID मॅपिंग
  - सर्वसमावेशक त्रुटी हाताळणी
  - Log4perl सह तपशीलवार लॉगिंग
  - सुरक्षित शटडाउनसाठी सिग्नल हाताळणी

- 🔧 **लवचिक कॉन्फिगरेशन**
  - INI-आधारित कॉन्फिगरेशन फाइल्स
  - एन्व्हायर्नमेंट व्हेरिएबल समर्थन
  - कमांड-लाइन पॅरामीटर ओव्हरराइड्स
  - एकाधिक BIND9 इन्स्टन्स समर्थन

## 📋 आवश्यकता

### सिस्टम आवश्यकता

- **ऑपरेटिंग सिस्टम**: BIND9 सह Linux/Unix
- **Perl**: आवृत्ती 5.10 किंवा उच्च
- **BIND9**: `rndc` कॉन्फिग केलेले आणि कार्यरत असलेले
- **विशेषाधिकार**: BIND9 सांख्यिकी फाइल वाचण्याचा प्रवेश

### Perl मॉड्यूल्स

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

## 📦 इन्स्टॉलेशन

### GitHub वरून

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

### Makefile.PL वापरून

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ कॉन्फिगरेशन

कॉन्फिगरेशन फाइल `config.ini` तयार करा:

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

### एन्व्हायर्नमेंट व्हेरिएबल्स

तुम्ही एन्व्हायर्नमेंट व्हेरिएबल्स वापरून कॉन्फिगरेशन ओव्हरराइड करू शकता:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 वापर

### मूलभूत वापर

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

### स्थानिकीकरण

CLI वापर आणि लॉग निदान `SNMP::BIND9::I18n` द्वारे कोणत्याही बाह्य CPAN अवलंबित्वाशिवाय 45 लोकेल्स (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) समर्थित करतात. निराकरण `--lang`, नंतर `LC_ALL`, `LC_MESSAGES`, आणि `LANG` चा मान राखते, आणि `en` वर परत येते. SNMP OIDs, प्रोटोकॉल टोकन्स आणि संख्यात्मक मेट्रिक मूल्ये सर्व लोकेल्समध्ये अपरिवर्तित राहतात.

### सेवा म्हणून चालवणे

#### Systemd सेवा

`/etc/systemd/system/bind9-snmp.service` तयार करा:

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

सेवा सक्षम आणि सुरू करा:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d स्क्रिप्ट (जुनी सिस्टम्स)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID मॅपिंग

हे साधन खालील OID रचना वापरते:

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

### SNMP द्वारे क्वेरी करणे

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 चाचणी

### युनिट चाचण्या

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### एकत्रीकरण चाचण्या

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### मॅन्युअल चाचणी

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 मॉनिटरिंग एकत्रीकरण

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix टेम्पलेट

`contrib/zabbix/bind9-snmp-template.xml` मधून प्रदान केलेले Zabbix टेम्पलेट इम्पोर्ट करा

### PRTG कस्टम सेन्सर

प्रदान केलेल्या OIDs सह SNMP Custom Advanced सेन्सर वापरा

## 🐛 समस्यानिवारण

### सामान्य समस्या

1. **स्टॅट्स फाइलवर परवानगी नाकारली**

   ```bash
   # फाइल परवानग्या तपासा
   ls -l /var/cache/bind/named.stats

   # परवानग्या दुरुस्त करा
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP पोर्ट आधीच वापरात आहे**

   ```bash
   # पोर्ट 161 काय वापरत आहे ते तपासा
   sudo netstat -tulpn | grep 161

   # कॉन्फिगमध्ये पर्यायी पोर्ट वापरा
   port = 1161
   ```

3. **rndc कमांड अयशस्वी होते**

   ```bash
   # rndc मॅन्युअली तपासा
   rndc stats

   # rndc कॉन्फिगरेशन तपासा
   rndc-confgen -a
   ```

4. **कोणतीही सांख्यिकी तयार झाली नाही**

   ```bash
   # named.conf मध्ये सांख्यिकी सक्षम करा
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### डीबग मोड

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 कामगिरीविषयक बाबी

- **पोलिंग अंतराल**: डीफॉल्ट 300 सेकंद, मॉनिटरिंग गरजांनुसार समायोजित करा
- **कॅशे कालावधी**: भार कमी करण्यासाठी पोल्स दरम्यान सांख्यिकी कॅशे केली जाते
- **फाइल I/O**: स्टॅट्स फाइल फक्त गरज असतानाच वाचली जाते
- **मेमरी वापर**: साधारणपणे 20MB RSS पेक्षा कमी
- **CPU वापर**: किमान, फक्त सांख्यिकी संकलनादरम्यान वाढ

## 🤝 योगदान

योगदानाचे स्वागत आहे! कृपया Pull Request सबमिट करण्यास मोकळ्या मनाने पुढे या.

1. रिपॉझिटरी फोर्क करा
2. तुमची फीचर शाखा तयार करा (`git checkout -b feature/amazing-feature`)
3. तुमचे बदल कमिट करा (`git commit -m 'feat: add amazing feature'`)
4. शाखेवर पुश करा (`git push origin feature/amazing-feature`)
5. Pull Request उघडा

### डेव्हलपमेंट सेटअप

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 परवाना

हा प्रकल्प MIT License अंतर्गत परवानाकृत आहे - तपशिलांसाठी [LICENSE](../../../LICENSE) फाइल पहा.

## 🔒 सुरक्षा

असुरक्षितता कळवण्याच्या तपशिलांसाठी कृपया आमचे [सुरक्षा धोरण](../../../SECURITY.md) पहा.

## 👨💻 लेखक

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 आभार

- उत्कृष्ट DNS सर्व्हरसाठी BIND9 डेव्हलपमेंट टीम
- मजबूत SNMP मॉड्यूल्ससाठी Perl समुदाय
- या प्रकल्पाचे योगदानकर्ते आणि वापरकर्ते

## 📚 संसाधने

- [BIND9 दस्तऐवजीकरण](https://bind9.readthedocs.io/)
- [Net::SNMP दस्तऐवजीकरण](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID नोंदणी](http://www.oid-info.com/)
- [प्रकल्प विकी](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ रोडमॅप

- [ ] प्रमाणीकरणासह SNMP v3 समर्थन
- [ ] Prometheus एक्सपोर्टर पर्याय
- [ ] वेब-आधारित सांख्यिकी डॅशबोर्ड
- [ ] Docker कंटेनर समर्थन
- [ ] स्वयंचलित इन्स्टॉलर स्क्रिप्ट
- [ ] कामगिरी मेट्रिक्स संकलन
- [ ] ऐतिहासिक डेटा संचयन
- [ ] अलर्ट मर्यादा कॉन्फिगरेशन

---

अधिक माहिती, बग अहवाल किंवा फीचर विनंत्यांसाठी, कृपया [GitHub रिपॉझिटरी](https://github.com/somethingwithproof/snmp-bind9-statistics) ला भेट द्या.

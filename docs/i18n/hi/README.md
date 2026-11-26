# SNMP BIND9 सांख्यिकी

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · **हिन्दी** · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

BIND9 DNS सर्वर के लिए एक व्यापक Perl-आधारित निगरानी समाधान जो नेटवर्क निगरानी प्रणालियों के साथ एकीकरण के लिए SNMP के माध्यम से सांख्यिकी प्रदर्शित करता है।

## 🚀 अवलोकन

SNMP BIND9 Statistics एक ऐसा टूल है जो BIND9 की अंतर्निहित सांख्यिकी और SNMP-आधारित निगरानी अवसंरचना के बीच की खाई को पाटता है। यह `rndc stats` का उपयोग करके विस्तृत DNS सर्वर मेट्रिक्स एकत्र करता है और उन्हें SNMP के माध्यम से प्रदर्शित करता है, जिससे Nagios, Zabbix, PRTG और अन्य निगरानी प्लेटफ़ॉर्म के साथ सहज एकीकरण संभव होता है।

## ✨ विशेषताएं

- 📊 **व्यापक सांख्यिकी संग्रह**
  - क्वेरी प्रकार (A, AAAA, MX, PTR, TXT, आदि)
  - प्रतिक्रिया कोड और त्रुटि दरें
  - कैश हिट/मिस अनुपात
  - ज़ोन ट्रांसफ़र सांख्यिकी
  - रिज़ॉल्वर प्रदर्शन मेट्रिक्स

- 🔄 **बुद्धिमान पोलिंग**
  - कॉन्फ़िगर करने योग्य पोलिंग अंतराल
  - सिस्टम लोड कम करने के लिए कैशिंग तंत्र
  - ज़बरदस्ती रीफ़्रेश करने की क्षमता
  - स्वचालित सांख्यिकी फ़ाइल रोटेशन प्रबंधन

- 🛡️ **एंटरप्राइज के लिए तैयार**
  - SNMP v2c समर्थन
  - कस्टम OID मैपिंग
  - व्यापक त्रुटि प्रबंधन
  - Log4perl के साथ विस्तृत लॉगिंग
  - सुचारु रूप से बंद करने के लिए सिग्नल प्रबंधन

- 🔧 **लचीला कॉन्फ़िगरेशन**
  - INI-आधारित कॉन्फ़िगरेशन फ़ाइलें
  - पर्यावरण चर समर्थन
  - कमांड-लाइन पैरामीटर ओवरराइड
  - एकाधिक BIND9 इंस्टेंस समर्थन

## 📋 आवश्यकताएं

### सिस्टम आवश्यकताएं

- **ऑपरेटिंग सिस्टम**: BIND9 के साथ Linux/Unix
- **Perl**: संस्करण 5.10 या उच्चतर
- **BIND9**: कॉन्फ़िगर और कार्यशील `rndc` के साथ
- **विशेषाधिकार**: BIND9 सांख्यिकी फ़ाइल तक पढ़ने की पहुंच

### Perl मॉड्यूल

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

## 📦 इंस्टॉलेशन

### GitHub से

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

### Makefile.PL का उपयोग करके

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ कॉन्फ़िगरेशन

एक कॉन्फ़िगरेशन फ़ाइल `config.ini` बनाएं:

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

### पर्यावरण चर

आप पर्यावरण चरों का उपयोग करके कॉन्फ़िगरेशन को ओवरराइड कर सकते हैं:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 उपयोग

### बुनियादी उपयोग

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

### स्थानीयकरण

CLI उपयोग और लॉग निदान `SNMP::BIND9::I18n` के माध्यम से शून्य बाहरी CPAN निर्भरताओं के साथ 45 लोकेल (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) का समर्थन करते हैं। रिज़ॉल्यूशन `--lang`, फिर `LC_ALL`, `LC_MESSAGES`, और `LANG` का सम्मान करता है, और अंत में `en` पर वापस आता है। SNMP OID, प्रोटोकॉल टोकन और संख्यात्मक मेट्रिक मान सभी लोकेल में अपरिवर्तित रहते हैं।

### सेवा के रूप में चलाना

#### Systemd सेवा

`/etc/systemd/system/bind9-snmp.service` बनाएं:

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

सेवा को सक्षम करें और प्रारंभ करें:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d स्क्रिप्ट (विरासती सिस्टम)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID मैपिंग

टूल निम्नलिखित OID संरचना का उपयोग करता है:

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

### SNMP के माध्यम से क्वेरी करना

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 परीक्षण

### यूनिट परीक्षण

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### एकीकरण परीक्षण

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### मैनुअल परीक्षण

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 निगरानी एकीकरण

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix टेम्पलेट

`contrib/zabbix/bind9-snmp-template.xml` से प्रदान किया गया Zabbix टेम्पलेट आयात करें

### PRTG कस्टम सेंसर

प्रदान किए गए OID के साथ SNMP Custom Advanced सेंसर का उपयोग करें

## 🐛 समस्या निवारण

### सामान्य समस्याएं

1. **सांख्यिकी फ़ाइल पर अनुमति अस्वीकृत**

   ```bash
   # फ़ाइल अनुमतियां जांचें
   ls -l /var/cache/bind/named.stats

   # अनुमतियां ठीक करें
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP पोर्ट पहले से उपयोग में है**

   ```bash
   # जांचें कि पोर्ट 161 का उपयोग क्या कर रहा है
   sudo netstat -tulpn | grep 161

   # कॉन्फ़िग में वैकल्पिक पोर्ट का उपयोग करें
   port = 1161
   ```

3. **rndc कमांड विफल होता है**

   ```bash
   # rndc का मैन्युअल रूप से परीक्षण करें
   rndc stats

   # rndc कॉन्फ़िगरेशन जांचें
   rndc-confgen -a
   ```

4. **कोई सांख्यिकी उत्पन्न नहीं हुई**

   ```bash
   # named.conf में सांख्यिकी सक्षम करें
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

## 📈 प्रदर्शन संबंधी विचार

- **पोलिंग अंतराल**: डिफ़ॉल्ट 300 सेकंड, निगरानी आवश्यकताओं के आधार पर समायोजित करें
- **कैश अवधि**: लोड कम करने के लिए पोल के बीच सांख्यिकी कैश की जाती है
- **फ़ाइल I/O**: सांख्यिकी फ़ाइल केवल आवश्यकता होने पर ही पढ़ी जाती है
- **मेमोरी उपयोग**: आमतौर पर 20MB RSS से कम
- **CPU उपयोग**: न्यूनतम, केवल सांख्यिकी संग्रह के दौरान बढ़ता है

## 🤝 योगदान

योगदान का स्वागत है! कृपया बेझिझक Pull Request सबमिट करें।

1. रिपॉजिटरी को फ़ोर्क करें
2. अपनी फ़ीचर ब्रांच बनाएं (`git checkout -b feature/amazing-feature`)
3. अपने बदलाव कमिट करें (`git commit -m 'feat: add amazing feature'`)
4. ब्रांच पर पुश करें (`git push origin feature/amazing-feature`)
5. एक Pull Request खोलें

### डेवलपमेंट सेटअप

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 लाइसेंस

यह प्रोजेक्ट MIT License के अंतर्गत लाइसेंस प्राप्त है - विवरण के लिए [LICENSE](../../../LICENSE) फ़ाइल देखें।

## 🔒 सुरक्षा

कमजोरियों की रिपोर्ट करने के विवरण के लिए कृपया हमारी [सुरक्षा नीति](../../../SECURITY.md) देखें।

## 👨💻 लेखक

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 आभार

- उत्कृष्ट DNS सर्वर के लिए BIND9 डेवलपमेंट टीम
- मजबूत SNMP मॉड्यूल के लिए Perl समुदाय
- इस प्रोजेक्ट के योगदानकर्ता और उपयोगकर्ता

## 📚 संसाधन

- [BIND9 दस्तावेज़ीकरण](https://bind9.readthedocs.io/)
- [Net::SNMP दस्तावेज़ीकरण](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID रजिस्ट्री](http://www.oid-info.com/)
- [प्रोजेक्ट विकी](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ रोडमैप

- [ ] प्रमाणीकरण के साथ SNMP v3 समर्थन
- [ ] Prometheus एक्सपोर्टर विकल्प
- [ ] वेब-आधारित सांख्यिकी डैशबोर्ड
- [ ] Docker कंटेनर समर्थन
- [ ] स्वचालित इंस्टॉलर स्क्रिप्ट
- [ ] प्रदर्शन मेट्रिक्स संग्रह
- [ ] ऐतिहासिक डेटा संग्रहण
- [ ] अलर्ट सीमा कॉन्फ़िगरेशन

---

अधिक जानकारी, बग रिपोर्ट या फ़ीचर अनुरोधों के लिए, कृपया [GitHub रिपॉजिटरी](https://github.com/somethingwithproof/snmp-bind9-statistics) पर जाएं।

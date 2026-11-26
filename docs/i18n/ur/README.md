# SNMP BIND9 اعداد و شمار

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · **اردو** · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

BIND9 DNS سرورز کے لیے Perl پر مبنی ایک جامع مانیٹرنگ حل جو نیٹ ورک مانیٹرنگ سسٹمز کے ساتھ انضمام کے لیے SNMP کے ذریعے اعداد و شمار فراہم کرتا ہے۔

## 🚀 جائزہ

SNMP BIND9 اعداد و شمار ایک ایسا ٹول ہے جو BIND9 کے بلٹ ان اعداد و شمار اور SNMP پر مبنی مانیٹرنگ ڈھانچے کے درمیان پل کا کام کرتا ہے۔ یہ `rndc stats` استعمال کرتے ہوئے تفصیلی DNS سرور میٹرکس اکٹھا کرتا ہے اور انہیں SNMP کے ذریعے پیش کرتا ہے، جس سے Nagios، Zabbix، PRTG، اور دیگر مانیٹرنگ پلیٹ فارمز کے ساتھ ہموار انضمام ممکن ہوتا ہے۔

## ✨ خصوصیات

- 📊 **جامع اعداد و شمار کی وصولی**
  - استفسار کی اقسام (A، AAAA، MX، PTR، TXT، وغیرہ)
  - جوابی کوڈز اور خرابی کی شرحیں
  - کیش ہٹ/مس (hit/miss) تناسب
  - زون ٹرانسفر کے اعداد و شمار
  - ریزولور کی کارکردگی کے میٹرکس

- 🔄 **ذہین پولنگ**
  - قابلِ ترتیب پولنگ وقفے
  - سسٹم کا بوجھ کم کرنے کے لیے کیشنگ کا طریقہ کار
  - زبردستی ریفریش (force refresh) کی سہولت
  - اعداد و شمار کی فائل کے خودکار روٹیشن کی ہینڈلنگ

- 🛡️ **انٹرپرائز کے لیے تیار**
  - SNMP v2c کی معاونت
  - حسبِ ضرورت OID میپنگ
  - جامع خرابی ہینڈلنگ
  - Log4perl کے ساتھ تفصیلی لاگنگ
  - باقاعدہ شٹ ڈاؤن کے لیے سگنل ہینڈلنگ

- 🔧 **لچکدار ترتیب**
  - INI پر مبنی ترتیبی فائلیں
  - ماحولیاتی متغیرات کی معاونت
  - کمانڈ لائن پیرامیٹر اوور رائیڈز
  - متعدد BIND9 انسٹینسز کی معاونت

## 📋 ضروریات

### سسٹم کی ضروریات

- **آپریٹنگ سسٹم**: BIND9 کے ساتھ Linux/Unix
- **Perl**: ورژن 5.10 یا اس سے جدید
- **BIND9**: فعال اور ترتیب شدہ `rndc` کے ساتھ
- **اجازتیں**: BIND9 اعداد و شمار کی فائل پڑھنے کی رسائی

### Perl ماڈیولز

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

## 📦 تنصیب

### GitHub سے

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

### Makefile.PL استعمال کرتے ہوئے

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ ترتیب

ایک ترتیبی فائل `config.ini` بنائیں:

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

## 🚀 استعمال

### بنیادی استعمال

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

### لوکلائزیشن

CLI استعمال اور لاگ تشخیصی پیغامات `SNMP::BIND9::I18n` کے ذریعے صفر بیرونی CPAN انحصاریت کے ساتھ 45 لوکیلز (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) کی معاونت کرتے ہیں۔ ریزولوشن `--lang`، پھر `LC_ALL`، `LC_MESSAGES`، اور `LANG` کو ترجیح دیتی ہے، اور آخر میں `en` پر واپس آتی ہے۔ SNMP OIDs، پروٹوکول ٹوکنز، اور عددی میٹرک اقدار تمام لوکیلز میں برقرار رہتی ہیں۔

### سروس کے طور پر چلانا

#### Systemd سروس

`/etc/systemd/system/bind9-snmp.service` بنائیں:

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

سروس کو فعال اور شروع کریں:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d اسکرپٹ (قدیم سسٹمز)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID میپنگ

ٹول درج ذیل OID ساخت استعمال کرتا ہے:

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

### SNMP کے ذریعے استفسار

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 ٹیسٹنگ

### یونٹ ٹیسٹ

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### انٹیگریشن ٹیسٹ

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### دستی ٹیسٹنگ

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 مانیٹرنگ انضمام

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### PRTG کسٹم سینسر

فراہم کردہ OIDs کے ساتھ SNMP Custom Advanced سینسر استعمال کریں

## 🐛 مسائل کا حل

### عام مسائل

1. **اعداد و شمار کی فائل پر اجازت مسترد (Permission Denied)**

   ```bash
   # فائل کی اجازتیں چیک کریں
   ls -l /var/cache/bind/named.stats

   # اجازتیں درست کریں
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP پورٹ پہلے سے استعمال میں ہے**

   ```bash
   # چیک کریں کہ پورٹ 161 کون استعمال کر رہا ہے
   sudo netstat -tulpn | grep 161

   # ترتیب میں متبادل پورٹ استعمال کریں
   port = 1161
   ```

3. **rndc کمانڈ ناکام ہو جاتی ہے**

   ```bash
   # rndc کو دستی طور پر ٹیسٹ کریں
   rndc stats

   # rndc کی ترتیب چیک کریں
   rndc-confgen -a
   ```

4. **کوئی اعداد و شمار تیار نہیں ہو رہے**

   ```bash
   # named.conf میں اعداد و شمار فعال کریں
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### ڈیبگ موڈ

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 کارکردگی کے پہلو

- **پولنگ وقفہ**: طے شدہ 300 سیکنڈ، مانیٹرنگ کی ضروریات کے مطابق ایڈجسٹ کریں
- **کیش کا دورانیہ**: بوجھ کم کرنے کے لیے پولز کے درمیان اعداد و شمار کیش کیے جاتے ہیں
- **فائل I/O**: اعداد و شمار کی فائل صرف ضرورت پڑنے پر پڑھی جاتی ہے
- **میموری کا استعمال**: عام طور پر 20MB RSS سے کم
- **CPU کا استعمال**: نہ ہونے کے برابر، صرف اعداد و شمار جمع کرتے وقت معمولی اضافہ

## 🤝 تعاون

تعاون کا خیرمقدم ہے! براہِ کرم بلا جھجھک Pull Request جمع کروائیں۔

1. ریپازٹری کو فورک (Fork) کریں
2. اپنی فیچر برانچ بنائیں (`git checkout -b feature/amazing-feature`)
3. اپنی تبدیلیاں کمٹ کریں (`git commit -m 'feat: add amazing feature'`)
4. برانچ کو پش کریں (`git push origin feature/amazing-feature`)
5. Pull Request کھولیں

### ڈیولپمنٹ سیٹ اپ

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 لائسنس

یہ پروجیکٹ MIT لائسنس کے تحت جاری کیا گیا ہے - تفصیلات کے لیے [LICENSE](../../../LICENSE) فائل دیکھیں۔

## 🔒 سیکیورٹی

کمزوریوں کی اطلاع دینے کی تفصیلات کے لیے براہِ کرم ہماری [سیکیورٹی پالیسی](../../../SECURITY.md) دیکھیں۔

## 👨💻 مصنف

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 اظہارِ تشکر

- بہترین DNS سرور کے لیے BIND9 ڈیولپمنٹ ٹیم
- مضبوط SNMP ماڈیولز کے لیے Perl کمیونٹی
- اس پروجیکٹ کے معاونین اور صارفین

## 📚 وسائل

- [BIND9 دستاویزات](https://bind9.readthedocs.io/)
- [Net::SNMP دستاویزات](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID رجسٹری](http://www.oid-info.com/)
- [پروجیکٹ وکی](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ روڈ میپ

- [ ] تصدیق کے ساتھ SNMP v3 کی معاونت
- [ ] Prometheus ایکسپورٹر کا متبادل
- [ ] ویب پر مبنی اعداد و شمار کا ڈیش بورڈ
- [ ] Docker کنٹینر کی معاونت
- [ ] خودکار انسٹالر اسکرپٹ
- [ ] کارکردگی کے میٹرکس جمع کرنا
- [ ] تاریخی ڈیٹا کا ذخیرہ
- [ ] الرٹ حدوں کی ترتیب

---

مزید معلومات، بگ رپورٹس، یا فیچر کی درخواستوں کے لیے براہِ کرم [GitHub ریپازٹری](https://github.com/somethingwithproof/snmp-bind9-statistics) ملاحظہ کریں۔

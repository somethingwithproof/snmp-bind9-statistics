# إحصائيات SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · **العربية (المغرب)** · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

حل مراقبة شامل مكتوب بـ Perl لسيرفورات DNS ديال BIND9، كيخرج الإحصائيات عبر SNMP باش يندمج بسهولة مع أنظمة مراقبة الشبكة.

## 🚀 نظرة عامة

SNMP BIND9 Statistics هي أداة كتربط بين الإحصائيات المدمجة فـ BIND9 وبنية المراقبة المبنية على SNMP. كتجمع مقاييس مفصلة ديال سيرفر DNS باستعمال `rndc stats` وكتعرضهم عبر SNMP، وهاد الشي كيسهل الاندماج مع منصات المراقبة بحال Nagios، Zabbix، PRTG، وغيرها.

## ✨ المميزات

- 📊 **جمع شامل للإحصائيات**
  - أنواع الاستعلامات (A، AAAA، MX، PTR، TXT، إلخ.)
  - رموز الأجوبة ونسب الأخطاء
  - نسب نجاح وفشل الكاش (Cache hit/miss ratios)
  - إحصائيات نقل المناطق (Zone transfer)
  - مقاييس أداء المحلل (Resolver)

- 🔄 **استطلاع ذكي**
  - فترات استطلاع قابلة للتعديل
  - آلية كاش باش تنقص الضغط على النظام
  - إمكانية التحديث الإجباري
  - تعامل أوتوماتيكي مع تدوير ملفات الإحصائيات

- 🛡️ **جاهز للاستعمال المهني**
  - دعم SNMP v2c
  - ربط OID مخصص
  - معالجة شاملة للأخطاء
  - تسجيل مفصل للأحداث بـ Log4perl
  - معالجة الإشارات للإيقاف الآمن والسلس

- 🔧 **إعدادات مرنة**
  - ملفات إعداد بصيغة INI
  - دعم متغيرات البيئة
  - إمكانية تغيير الإعدادات من سطر الأوامر
  - دعم عدة نسخ ديال BIND9

## 📋 المتطلبات

### متطلبات النظام

- **نظام التشغيل**: Linux/Unix مع BIND9
- **Perl**: النسخة 5.10 ولا كتر
- **BIND9**: مع `rndc` مضبوط وخدام
- **الصلاحيات**: صلاحية القراءة ديال ملف إحصائيات BIND9

### موديلات Perl

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

## 📦 التثبيت

### من GitHub

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

### باستعمال Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ الإعدادات

صاوب ملف إعدادات `config.ini`:

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

### متغيرات البيئة

تقدر تغير الإعدادات باستعمال متغيرات البيئة:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 الاستعمال

### الاستعمال الأساسي

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

### الترجمة واللغات

طريقة الاستعمال فسطر الأوامر وتشخيصات السجل كيدعمو 45 لغة (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) بلا حتى تبعية خارجية من CPAN عبر `SNMP::BIND9::I18n`. اختيار اللغة كيحتارم `--lang`، ومن بعد `LC_ALL`، `LC_MESSAGES`، و `LANG`، وكيرجع لـ `en` افتراضياً. رموز SNMP OID، رموز البروتوكول، والقيم الرقمية ديال المقاييس كيبقاو نفسهم فجميع اللغات.

### التشغيل كخدمة

#### خدمة Systemd

صاوب `/etc/systemd/system/bind9-snmp.service`:

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

فعّل وخدم الخدمة:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### سكريبت Init.d (للأنظمة القديمة)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 ربط SNMP OID

الأداة كتستعمل بنية OID التالية:

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

### الاستعلام عبر SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 الاختبارات

### اختبارات الوحدة

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### اختبارات التكامل

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### الاختبار اليدوي

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 الاندماج مع أنظمة المراقبة

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### قالب Zabbix

استورد قالب Zabbix لي كاين فـ `contrib/zabbix/bind9-snmp-template.xml`

### مستشعر PRTG مخصص

استعمل مستشعر SNMP Custom Advanced مع الـ OIDs المعطيين

## 🐛 حل المشاكل

### المشاكل الشائعة

1. **رفض الصلاحية فملف الإحصائيات**

   ```bash
   # تحقق من صلاحيات الملف
   ls -l /var/cache/bind/named.stats

   # صلح الصلاحيات
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **منفذ SNMP مستعمل ديجا**

   ```bash
   # شوف شنو لي مستعمل المنفذ 161
   sudo netstat -tulpn | grep 161

   # استعمل منفذ بديل فالإعدادات
   port = 1161
   ```

3. **أمر rndc كيفشل**

   ```bash
   # جرب rndc بيديك
   rndc stats

   # تحقق من إعدادات rndc
   rndc-confgen -a
   ```

4. **ما كتتولدش الإحصائيات**

   ```bash
   # فعّل الإحصائيات فـ named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### وضع التصحيح (Debug Mode)

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 اعتبارات الأداء

- **فترة الاستطلاع**: الافتراضي 300 ثانية، عدّلها على حساب احتياجات المراقبة
- **مدة الكاش**: الإحصائيات كيتخزنو فالكاش بين عمليات الاستطلاع باش ينقص الضغط
- **قراءة الملفات (File I/O)**: ملف الإحصائيات كيتقرا غير ملي كيكون ضروري
- **استهلاك الذاكرة**: غالباً قل من 20MB RSS
- **استهلاك المعالج (CPU)**: قليل بزاف، كيطلع شوية غير وقت جمع الإحصائيات

## 🤝 المساهمة

المساهمات مرحب بيها! ما تترددش تصيفط Pull Request.

1. دير Fork للمستودع
2. صاوب فرع للميزة ديالك (`git checkout -b feature/amazing-feature`)
3. دير commit للتغييرات ديالك (`git commit -m 'feat: add amazing feature'`)
4. طلع الفرع (`git push origin feature/amazing-feature`)
5. حل Pull Request

### إعداد بيئة التطوير

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 الرخصة

هاد المشروع مرخّص برخصة MIT - شوف ملف [LICENSE](../../../LICENSE) للتفاصيل.

## 🔒 الأمان

شوف [سياسة الأمان](../../../SECURITY.md) ديالنا باش تعرف كيفاش تبلغ على الثغرات.

## 👨💻 المؤلف

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 شكر وتقدير

- فريق تطوير BIND9 على سيرفر DNS الرائع
- مجتمع Perl على موديلات SNMP القوية
- المساهمين والمستخدمين ديال هاد المشروع

## 📚 موارد

- [توثيق BIND9](https://bind9.readthedocs.io/)
- [توثيق Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [سجل SNMP OID](http://www.oid-info.com/)
- [ويكي المشروع](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ خارطة الطريق

- [ ] دعم SNMP v3 مع المصادقة
- [ ] بديل مصدر Prometheus (Prometheus exporter)
- [ ] لوحة تحكم للإحصائيات على الويب
- [ ] دعم حاويات Docker
- [ ] سكريبت تثبيت أوتوماتيكي
- [ ] جمع مقاييس الأداء
- [ ] تخزين البيانات التاريخية
- [ ] إعداد عتبات التنبيه

---

لمزيد من المعلومات، الإبلاغ عن الأعطال، ولا طلب ميزات جداد، زور [مستودع GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

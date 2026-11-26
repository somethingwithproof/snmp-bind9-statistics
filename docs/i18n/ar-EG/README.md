# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · **العربية (مصر)** · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

حل مراقبة شامل مكتوب بـ Perl لسيرفرات BIND9 DNS، بيطلع الإحصائيات عن طريق SNMP عشان يتكامل بسهولة مع أنظمة مراقبة الشبكات.

## 🚀 نظرة عامة

أداة SNMP BIND9 Statistics بتربط بين الإحصائيات المدمجة في BIND9 وبين بنية المراقبة اللي شغالة بـ SNMP. الأداة بتجمع مقاييس مفصّلة لسيرفر الـ DNS باستخدام `rndc stats` وبتعرضها عن طريق SNMP، وده بيخلي التكامل سلس مع منصات المراقبة زي Nagios وZabbix وPRTG وغيرهم.

## ✨ المميزات

- 📊 **تجميع شامل للإحصائيات**
  - أنواع الاستعلامات (A وAAAA وMX وPTR وTXT وغيرهم)
  - أكواد الاستجابة ومعدلات الأخطاء
  - نسب نجاح وفشل الكاش (Cache hit/miss ratios)
  - إحصائيات نقل المناطق (Zone transfer)
  - مقاييس أداء الـ Resolver

- 🔄 **سحب دوري ذكي (Polling)**
  - فترات سحب قابلة للتعديل
  - آلية كاش عشان تقلل الحمل على السيرفر
  - إمكانية فرض التحديث الفوري
  - تعامل تلقائي مع تدوير ملف الإحصائيات (file rotation)

- 🛡️ **جاهز لبيئات الشركات**
  - دعم SNMP v2c
  - ربط OID مخصص
  - تعامل شامل مع الأخطاء
  - تسجيل مفصّل للأحداث باستخدام Log4perl
  - تعامل مع إشارات النظام (Signals) للإغلاق الآمن

- 🔧 **إعدادات مرنة**
  - ملفات إعدادات بصيغة INI
  - دعم لمتغيرات البيئة
  - إمكانية تعديل الإعدادات من سطر الأوامر
  - دعم أكتر من نسخة BIND9 في نفس الوقت

## 📋 المتطلبات

### متطلبات النظام

- **نظام التشغيل**: Linux/Unix عليه BIND9
- **Perl**: إصدار 5.10 أو أحدث
- **BIND9**: يكون `rndc` متظبط وشغال فيه
- **الصلاحيات**: صلاحية قراءة لملف إحصائيات BIND9

### موديولات Perl

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

### باستخدام Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ الإعدادات

اعمل ملف إعدادات اسمه `config.ini`:

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

## 🚀 الاستخدام

### الاستخدام الأساسي

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

### الترجمة والتوطين (Localization)

رسايل استخدام سطر الأوامر وتشخيصات السجلات (logs) بيدعموا 45 لغة ومنطقة (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) من غير أي اعتماديات CPAN خارجية عن طريق `SNMP::BIND9::I18n`. تحديد اللغة بيبص الأول على `--lang`، وبعدها `LC_ALL` و`LC_MESSAGES` و`LANG`، ولو مفيش حاجة منهم بيرجع لـ `en`. ومعرفات SNMP OIDs، ورموز البروتوكول، والقيم الرقمية للمقاييس بتفضل ثابتة من غير تغيير في كل اللغات.

### التشغيل كخدمة (Service)

#### خدمة Systemd

اعمل ملف `/etc/systemd/system/bind9-snmp.service`:

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

فعّل الخدمة وشغّلها:

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

الأداة بتستخدم هيكل الـ OID ده:

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

### اختبارات الوحدة (Unit Tests)

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### اختبارات التكامل (Integration Tests)

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### الاختبار اليدوي

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 التكامل مع أنظمة المراقبة

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### مستشعر PRTG المخصص

استخدم مستشعر SNMP Custom Advanced مع الـ OIDs المرفقة

## 🐛 استكشاف الأخطاء وإصلاحها

### مشاكل شائعة

1. **ممنوع الوصول (Permission Denied) لملف الإحصائيات**

   ```bash
   # شوف صلاحيات الملف
   ls -l /var/cache/bind/named.stats

   # صلّح الصلاحيات
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **بورت SNMP مستخدم بالفعل**

   ```bash
   # شوف إيه اللي مستخدم بورت 161
   sudo netstat -tulpn | grep 161

   # استخدم بورت بديل في ملف الإعدادات
   port = 1161
   ```

3. **أمر rndc بيفشل**

   ```bash
   # جرّب rndc يدوي
   rndc stats

   # راجع إعدادات rndc
   rndc-confgen -a
   ```

4. **مفيش إحصائيات بتتولد**

   ```bash
   # فعّل الإحصائيات في named.conf
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

- **فترة السحب الدوري (Polling Interval)**: الافتراضي 300 ثانية، عدّلها حسب احتياجات المراقبة عندك
- **مدة الكاش**: الإحصائيات بتتخزن في الكاش بين كل سحبة والتانية عشان الحمل يقل
- **عمليات قراءة الملفات (File I/O)**: ملف الإحصائيات بيتقري بس وقت الحاجة
- **استهلاك الذاكرة**: في العادة أقل من 20MB RSS
- **استهلاك المعالج (CPU)**: بسيط جداً، وبيزيد لحظياً بس وقت تجميع الإحصائيات

## 🤝 المساهمة

المساهمات مرحّب بيها دايماً! اتفضل ابعت Pull Request في أي وقت.

1. اعمل Fork للريبو
2. اعمل فرع الميزة بتاعتك (`git checkout -b feature/amazing-feature`)
3. اعمل Commit لتغييراتك (`git commit -m 'feat: add amazing feature'`)
4. ارفع الفرع (`git push origin feature/amazing-feature`)
5. افتح Pull Request

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

المشروع ده مرخص تحت رخصة MIT - شوف ملف [LICENSE](../../../LICENSE) للتفاصيل.

## 🔒 الأمان

شوف [سياسة الأمان](../../../SECURITY.md) بتاعتنا عشان تعرف تفاصيل الإبلاغ عن الثغرات.

## 👨💻 المؤلف

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 شكر وتقدير

- فريق تطوير BIND9 على سيرفر الـ DNS الممتاز
- مجتمع Perl على موديولات SNMP القوية
- كل المساهمين ومستخدمي المشروع ده

## 📚 مصادر ومراجع

- [وثائق BIND9](https://bind9.readthedocs.io/)
- [وثائق Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [سجل SNMP OID](http://www.oid-info.com/)
- [ويكي المشروع](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ خارطة الطريق

- [ ] دعم SNMP v3 مع المصادقة
- [ ] بديل Prometheus exporter
- [ ] لوحة تحكم ويب للإحصائيات
- [ ] دعم حاويات Docker
- [ ] سكريبت تثبيت تلقائي
- [ ] تجميع مقاييس الأداء
- [ ] تخزين البيانات التاريخية
- [ ] ضبط حدود التنبيه

---

لمعلومات أكتر، أو الإبلاغ عن أخطاء، أو طلب مميزات جديدة، زور [صفحة المشروع على GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

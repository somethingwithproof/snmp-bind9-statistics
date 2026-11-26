# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · **فارسی** · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

یک راهکار جامع پایش مبتنی بر Perl برای سرورهای DNS BIND9 که آمارها را از طریق SNMP برای یکپارچه‌سازی با سامانه‌های پایش شبکه در دسترس قرار می‌دهد.

## 🚀 نمای کلی

SNMP BIND9 Statistics ابزاری است که شکاف میان آمارهای داخلی BIND9 و زیرساخت پایش مبتنی بر SNMP را پر می‌کند. این ابزار معیارهای دقیق سرور DNS را با استفاده از `rndc stats` جمع‌آوری کرده و از طریق SNMP ارائه می‌دهد و یکپارچه‌سازی بی‌دردسر با پلتفرم‌های پایش مانند Nagios، Zabbix، PRTG و غیره را ممکن می‌سازد.

## ✨ ویژگی‌ها

- 📊 **جمع‌آوری جامع آمار**
  - انواع پرس‌وجوها (A، AAAA، MX، PTR، TXT و غیره)
  - کدهای پاسخ و نرخ خطاها
  - نسبت موفقیت/عدم موفقیت کش
  - آمار انتقال ناحیه
  - معیارهای کارایی حل‌کننده (Resolver)

- 🔄 **پرس‌وجوی دوره‌ای هوشمند**
  - بازه‌های پرس‌وجوی دوره‌ای قابل پیکربندی
  - سازوکار کش برای کاهش بار سیستم
  - قابلیت بازخوانی اجباری
  - مدیریت خودکار چرخش فایل آمار

- 🛡️ **آماده برای محیط‌های سازمانی**
  - پشتیبانی از SNMP v2c
  - نگاشت سفارشی OID
  - مدیریت جامع خطا
  - ثبت وقایع دقیق با Log4perl
  - مدیریت سیگنال برای خاموش شدن ایمن

- 🔧 **پیکربندی منعطف**
  - فایل‌های پیکربندی مبتنی بر INI
  - پشتیبانی از متغیرهای محیطی
  - بازنویسی تنظیمات از طریق پارامترهای خط فرمان
  - پشتیبانی از چندین نمونه BIND9

## 📋 پیش‌نیازها

### پیش‌نیازهای سیستم

- **سیستم‌عامل**: Linux/Unix همراه با BIND9
- **Perl**: نسخه 5.10 یا بالاتر
- **BIND9**: با `rndc` پیکربندی‌شده و عملیاتی
- **مجوزها**: دسترسی خواندن به فایل آمار BIND9

### ماژول‌های Perl

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

## 📦 نصب

### از GitHub

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

### با استفاده از Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ پیکربندی

یک فایل پیکربندی `config.ini` ایجاد کنید:

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

### متغیرهای محیطی

می‌توانید تنظیمات را با استفاده از متغیرهای محیطی بازنویسی کنید:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 نحوه استفاده

### استفاده پایه

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

### بومی‌سازی

راهنمای خط فرمان و پیام‌های عیب‌یابی وقایع از ۴۵ زبان (`en`، `de`، `es`، `fr`، `it`، `pt-BR`، `nl`، `ru`، `uk`، `ja`، `ko`، `zh-CN`، `zh-TW`، `ar`، `hi`، `pl`، `tr`، `sv`، `vi`، `id`، `af-ZA`، `am-ET`، `ar-EG`، `ar-MA`، `fr-MA`، `fr-SN`، `ha-NG`، `ig-NG`، `mg-MG`، `rw-RW`، `so-SO`، `sw-KE`، `xh-ZA`، `yo-NG`، `zu-ZA`، `bn`، `fa`، `he`، `mr`، `ta`، `te`، `th`، `ur`، `ms`، `fil`) بدون هیچ وابستگی خارجی CPAN از طریق `SNMP::BIND9::I18n` پشتیبانی می‌کنند. انتخاب زبان به ترتیب از `--lang`، سپس `LC_ALL`، `LC_MESSAGES` و `LANG` پیروی می‌کند و در صورت نبود به `en` برمی‌گردد. شناسه‌های OID در SNMP، توکن‌های پروتکل و مقادیر عددی معیارها در همه زبان‌ها بدون تغییر باقی می‌مانند.

### اجرا به‌صورت سرویس

#### سرویس Systemd

فایل `/etc/systemd/system/bind9-snmp.service` را ایجاد کنید:

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

سرویس را فعال و راه‌اندازی کنید:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### اسکریپت Init.d (سیستم‌های قدیمی)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 نگاشت OID در SNMP

این ابزار از ساختار OID زیر استفاده می‌کند:

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

### پرس‌وجو از طریق SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 آزمایش

### آزمون‌های واحد

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### آزمون‌های یکپارچه‌سازی

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### آزمایش دستی

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 یکپارچه‌سازی با سامانه‌های پایش

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### قالب Zabbix

قالب ارائه‌شده Zabbix را از مسیر `contrib/zabbix/bind9-snmp-template.xml` وارد کنید

### حسگر سفارشی PRTG

از حسگر SNMP Custom Advanced همراه با OIDهای ارائه‌شده استفاده کنید

## 🐛 عیب‌یابی

### مشکلات رایج

1. **عدم دسترسی به فایل آمار**

   ```bash
   # بررسی مجوزهای فایل
   ls -l /var/cache/bind/named.stats

   # اصلاح مجوزها
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **اشغال بودن پورت SNMP**

   ```bash
   # بررسی پردازه‌ای که از پورت 161 استفاده می‌کند
   sudo netstat -tulpn | grep 161

   # استفاده از پورت جایگزین در پیکربندی
   port = 1161
   ```

3. **خطا در دستور rndc**

   ```bash
   # آزمایش دستی rndc
   rndc stats

   # بررسی پیکربندی rndc
   rndc-confgen -a
   ```

4. **تولید نشدن آمار**

   ```bash
   # فعال‌سازی آمار در named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### حالت اشکال‌زدایی

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 ملاحظات کارایی

- **بازه پرس‌وجوی دوره‌ای**: پیش‌فرض ۳۰۰ ثانیه، بر اساس نیازهای پایش تنظیم کنید
- **مدت نگهداری کش**: آمار بین هر بار پرس‌وجو کش می‌شوند تا بار سیستم کاهش یابد
- **ورودی/خروجی فایل**: فایل آمار تنها در زمان نیاز خوانده می‌شود
- **مصرف حافظه**: معمولاً کمتر از ۲۰ مگابایت RSS
- **مصرف پردازنده**: بسیار ناچیز، افزایش لحظه‌ای فقط هنگام جمع‌آوری آمار

## 🤝 مشارکت

از مشارکت شما استقبال می‌کنیم! لطفاً برای ارسال Pull Request تردید نکنید.

1. مخزن را فورک کنید
2. شاخه ویژگی خود را بسازید (`git checkout -b feature/amazing-feature`)
3. تغییرات خود را کامیت کنید (`git commit -m 'feat: add amazing feature'`)
4. تغییرات را به شاخه پوش کنید (`git push origin feature/amazing-feature`)
5. یک Pull Request باز کنید

### راه‌اندازی محیط توسعه

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 مجوز

این پروژه تحت مجوز MIT منتشر شده است؛ برای جزئیات فایل [LICENSE](../../../LICENSE) را ببینید.

## 🔒 امنیت

لطفاً برای جزئیات گزارش آسیب‌پذیری‌ها به [سیاست امنیتی](../../../SECURITY.md) ما مراجعه کنید.

## 👨💻 نویسنده

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 قدردانی

- تیم توسعه BIND9 برای ساخت این سرور DNS عالی
- جامعه Perl برای ماژول‌های قدرتمند SNMP
- مشارکت‌کنندگان و کاربران این پروژه

## 📚 منابع

- [مستندات BIND9](https://bind9.readthedocs.io/)
- [مستندات Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [رجیستری SNMP OID](http://www.oid-info.com/)
- [ویکی پروژه](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ نقشه راه

- [ ] پشتیبانی از SNMP v3 همراه با احراز هویت
- [ ] جایگزین صادرکننده Prometheus
- [ ] داشبورد وب برای نمایش آمار
- [ ] پشتیبانی از کانتینر Docker
- [ ] اسکریپت نصب خودکار
- [ ] جمع‌آوری معیارهای کارایی
- [ ] ذخیره‌سازی داده‌های تاریخی
- [ ] پیکربندی آستانه هشدارها

---

برای اطلاعات بیشتر، گزارش خطاها یا درخواست ویژگی‌های جدید، لطفاً به [مخزن GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics) مراجعه کنید.

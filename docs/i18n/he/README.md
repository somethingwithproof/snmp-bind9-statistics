# סטטיסטיקות SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · **עברית** · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

פתרון ניטור מקיף מבוסס Perl לשרתי DNS מסוג BIND9 החושף סטטיסטיקות דרך SNMP לשילוב עם מערכות ניטור רשת.

## 🚀 סקירה כללית

SNMP BIND9 Statistics הוא כלי המגשר בין הסטטיסטיקות המובנות של BIND9 לבין תשתית ניטור מבוססת SNMP. הוא אוסף מדדי שרת DNS מפורטים באמצעות `rndc stats` וחושף אותם דרך SNMP, מה שמאפשר שילוב חלק עם פלטפורמות ניטור כגון Nagios, Zabbix, PRTG ואחרות.

## ✨ תכונות

- 📊 **איסוף סטטיסטיקות מקיף**
  - סוגי שאילתות (A, AAAA, MX, PTR, TXT ועוד)
  - קודי תגובה ושיעורי שגיאות
  - יחסי פגיעה/החמצה במטמון
  - סטטיסטיקות העברת אזורים
  - מדדי ביצועי מפענח (Resolver)

- 🔄 **דגימה חכמה**
  - מרווחי דגימה הניתנים להגדרה
  - מנגנון מטמון להפחתת עומס המערכת
  - יכולת רענון מאולץ
  - טיפול אוטומטי ברוטציית קבצי סטטיסטיקות

- 🛡️ **מוכן לסביבה ארגונית**
  - תמיכה ב-SNMP v2c
  - מיפוי OID מותאם אישית
  - טיפול מקיף בשגיאות
  - תיעוד מפורט ביומנים באמצעות Log4perl
  - טיפול באותות לכיבוי מסודר

- 🔧 **תצורה גמישה**
  - קבצי תצורה מבוססי INI
  - תמיכה במשתני סביבה
  - דריסת פרמטרים משורת הפקודה
  - תמיכה במספר מופעי BIND9

## 📋 דרישות

### דרישות מערכת

- **מערכת הפעלה**: Linux/Unix עם BIND9
- **Perl**: גרסה 5.10 ומעלה
- **BIND9**: עם `rndc` מוגדר ופעיל
- **הרשאות**: גישת קריאה לקובץ הסטטיסטיקות של BIND9

### מודולי Perl

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

## 📦 התקנה

### מתוך GitHub

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

### באמצעות Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ תצורה

צרו קובץ תצורה `config.ini`:

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

### משתני סביבה

ניתן לדרוס את התצורה באמצעות משתני סביבה:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 שימוש

### שימוש בסיסי

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

### לוקליזציה

שימוש ב-CLI ואבחון יומנים תומכים ב-45 שפות ומיקומים (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ללא תלויות CPAN חיצוניות באמצעות `SNMP::BIND9::I18n`. פתרון השפה מכבד את `--lang`, ולאחר מכן את `LC_ALL`, `LC_MESSAGES` ו-`LANG`, וחוזר ל-`en` כברירת מחדל. מזהי OID של SNMP, אסימוני פרוטוקול וערכי מדדים מספריים נותרים ללא שינוי בכל השפות.

### הרצה כשירות

#### שירות Systemd

צרו את `/etc/systemd/system/bind9-snmp.service`:

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

הפעילו ואפשרו את השירות:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### סקריפט Init.d (מערכות ותיקות)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 מיפוי SNMP OID

הכלי משתמש במבנה ה-OID הבא:

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

### ביצוע שאילתות דרך SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 בדיקות

### בדיקות יחידה

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### בדיקות אינטגרציה

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### בדיקה ידנית

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 שילוב עם מערכות ניטור

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### תבנית Zabbix

ייבאו את תבנית ה-Zabbix המצורפת מתוך `contrib/zabbix/bind9-snmp-template.xml`

### חיישן מותאם אישית ב-PRTG

השתמשו בחיישן SNMP Custom Advanced עם מזהי ה-OID המסופקים

## 🐛 פתרון תקלות

### בעיות נפוצות

1. **הרשאה נדחתה בקובץ הסטטיסטיקות**

   ```bash
   # Check file permissions
   ls -l /var/cache/bind/named.stats

   # Fix permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **יציאת SNMP כבר בשימוש**

   ```bash
   # Check what's using port 161
   sudo netstat -tulpn | grep 161

   # Use alternative port in config
   port = 1161
   ```

3. **פקודת rndc נכשלת**

   ```bash
   # Test rndc manually
   rndc stats

   # Check rndc configuration
   rndc-confgen -a
   ```

4. **לא נוצרות סטטיסטיקות**

   ```bash
   # Enable statistics in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### מצב ניפוי שגיאות

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 שיקולי ביצועים

- **מרווח דגימה**: ברירת מחדל של 300 שניות, התאימו בהתאם לצורכי הניטור
- **משך שמירה במטמון**: הסטטיסטיקות נשמרות במטמון בין דגימות להפחתת העומס
- **קלט/פלט קבצים**: קובץ הסטטיסטיקות נקרא רק בעת הצורך
- **צריכת זיכרון**: בדרך כלל מתחת ל-20MB RSS
- **צריכת מעבד**: מזערית, עלייה רגעית רק בזמן איסוף הסטטיסטיקות

## 🤝 תרומה לפרויקט

תרומות מתקבלות בברכה! אל תהססו להגיש Pull Request.

1. בצעו Fork למאגר
2. צרו ענף תכונה משלכם (`git checkout -b feature/amazing-feature`)
3. בצעו Commit לשינויים שלכם (`git commit -m 'feat: add amazing feature'`)
4. דחפו לענף (`git push origin feature/amazing-feature`)
5. פתחו Pull Request

### הגדרת סביבת פיתוח

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 רישיון

פרויקט זה מורשה תחת רישיון MIT - ראו את הקובץ [LICENSE](../../../LICENSE) לפרטים.

## 🔒 אבטחה

אנא ראו את [מדיניות האבטחה](../../../SECURITY.md) שלנו לפרטים על דיווח פגיעויות.

## 👨💻 מחבר

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 תודות

- צוות הפיתוח של BIND9 על שרת ה-DNS המצוין
- קהילת Perl על מודולי ה-SNMP היציבים
- התורמים והמשתמשים של פרויקט זה

## 📚 משאבים

- [תיעוד BIND9](https://bind9.readthedocs.io/)
- [תיעוד Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [רישום SNMP OID](http://www.oid-info.com/)
- [ויקי הפרויקט](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ מפת דרכים

- [ ] תמיכה ב-SNMP v3 עם אימות
- [ ] חלופה לייצוא ל-Prometheus
- [ ] לוח בקרה מבוסס דפדפן לסטטיסטיקות
- [ ] תמיכה במכולות Docker
- [ ] סקריפט התקנה אוטומטי
- [ ] איסוף מדדי ביצועים
- [ ] אחסון נתונים היסטוריים
- [ ] הגדרת ספי התראה

---

למידע נוסף, דיווחי באגים או בקשות לתכונות, אנא בקרו ב-[מאגר ה-GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

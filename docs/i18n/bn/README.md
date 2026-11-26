# SNMP BIND9 পরিসংখ্যান

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · **বাংলা** · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

নেটওয়ার্ক মনিটরিং সিস্টেমের সাথে সংযুক্তির জন্য SNMP-এর মাধ্যমে পরিসংখ্যান প্রকাশকারী BIND9 DNS সার্ভারগুলোর জন্য একটি পূর্ণাঙ্গ Perl-ভিত্তিক মনিটরিং সমাধান।

## 🚀 সংক্ষিপ্ত বিবরণ

SNMP BIND9 Statistics হলো এমন একটি টুল যা BIND9-এর অন্তর্নির্মিত পরিসংখ্যান এবং SNMP-ভিত্তিক মনিটরিং অবকাঠামোর মধ্যে সেতুবন্ধন তৈরি করে। এটি `rndc stats` ব্যবহার করে বিস্তারিত DNS সার্ভার মেট্রিক সংগ্রহ করে এবং SNMP-এর মাধ্যমে সেগুলো প্রকাশ করে, যা Nagios, Zabbix, PRTG এবং অন্যান্য মনিটরিং প্ল্যাটফর্মের সাথে নিরবচ্ছিন্ন সংযুক্তি সক্ষম করে।

## ✨ বৈশিষ্ট্যসমূহ

- 📊 **পূর্ণাঙ্গ পরিসংখ্যান সংগ্রহ**
  - কোয়েরির ধরন (A, AAAA, MX, PTR, TXT ইত্যাদি)
  - রেসপন্স কোড এবং ত্রুটির হার
  - ক্যাশ হিট/মিস অনুপাত
  - জোন ট্রান্সফার পরিসংখ্যান
  - রিজলভার পারফরম্যান্স মেট্রিক

- 🔄 **বুদ্ধিমান পোলিং**
  - কনফিগারযোগ্য পোলিং বিরতি
  - সিস্টেম লোড কমাতে ক্যাশিং ব্যবস্থা
  - জোরপূর্বক রিফ্রেশ করার ক্ষমতা
  - স্বয়ংক্রিয় পরিসংখ্যান ফাইল রোটেশন পরিচালনা

- 🛡️ **এন্টারপ্রাইজ-প্রস্তুত**
  - SNMP v2c সমর্থন
  - কাস্টম OID ম্যাপিং
  - বিস্তারিত ত্রুটি পরিচালনা
  - Log4perl-সহ বিস্তারিত লগিং
  - সুষ্ঠুভাবে বন্ধ করার জন্য সিগন্যাল পরিচালনা

- 🔧 **নমনীয় কনফিগারেশন**
  - INI-ভিত্তিক কনফিগারেশন ফাইল
  - এনভায়রনমেন্ট ভ্যারিয়েবল সমর্থন
  - কমান্ড-লাইন প্যারামিটার ওভাররাইড
  - একাধিক BIND9 ইনস্ট্যান্স সমর্থন

## 📋 প্রয়োজনীয়তা

### সিস্টেমের প্রয়োজনীয়তা

- **অপারেটিং সিস্টেম**: BIND9-সহ Linux/Unix
- **Perl**: সংস্করণ 5.10 বা তার বেশি
- **BIND9**: কনফিগার করা এবং কার্যকর `rndc`-সহ
- **অধিকার**: BIND9 পরিসংখ্যান ফাইলে পড়ার অনুমতি

### Perl মডিউল

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

## 📦 ইনস্টলেশন

### GitHub থেকে

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

### Makefile.PL ব্যবহার করে

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ কনফিগারেশন

একটি কনফিগারেশন ফাইল `config.ini` তৈরি করুন:

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

## 🚀 ব্যবহারবিধি

### মৌলিক ব্যবহার

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

### স্থানীয়করণ

CLI ব্যবহার এবং লগ ডায়াগনস্টিকস কোনো বাহ্যিক CPAN ডিপেন্ডেন্সি ছাড়াই `SNMP::BIND9::I18n`-এর মাধ্যমে 45টি লোকেল (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) সমর্থন করে। রেজোলিউশন প্রথমে `--lang`, তারপর `LC_ALL`, `LC_MESSAGES` এবং `LANG` অনুসরণ করে এবং না পেলে `en`-এ ফিরে যায়। SNMP OID, প্রোটোকল টোকেন এবং সংখ্যাগত মেট্রিকের মান সব লোকেলে অপরিবর্তিত থাকে।

### সার্ভিস হিসেবে চালানো

#### Systemd সার্ভিস

`/etc/systemd/system/bind9-snmp.service` তৈরি করুন:

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

সার্ভিসটি সক্রিয় করুন এবং চালু করুন:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d স্ক্রিপ্ট (পুরোনো সিস্টেম)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID ম্যাপিং

টুলটি নিচের OID কাঠামো ব্যবহার করে:

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

### SNMP-এর মাধ্যমে কোয়েরি করা

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 পরীক্ষা

### ইউনিট টেস্ট

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### ইন্টিগ্রেশন টেস্ট

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### ম্যানুয়াল পরীক্ষা

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 মনিটরিং সংযুক্তি

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### PRTG কাস্টম সেন্সর

প্রদত্ত OID-গুলোর সাথে SNMP Custom Advanced সেন্সর ব্যবহার করুন

## 🐛 সমস্যা সমাধান

### সাধারণ সমস্যা

1. **পরিসংখ্যান ফাইলে অনুমতি প্রত্যাখ্যাত**

   ```bash
   # ফাইলের অনুমতি পরীক্ষা করুন
   ls -l /var/cache/bind/named.stats

   # অনুমতি ঠিক করুন
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP পোর্ট ইতিমধ্যেই ব্যবহৃত হচ্ছে**

   ```bash
   # পোর্ট 161 কী ব্যবহার করছে তা দেখুন
   sudo netstat -tulpn | grep 161

   # কনফিগারেশনে বিকল্প পোর্ট ব্যবহার করুন
   port = 1161
   ```

3. **rndc কমান্ড ব্যর্থ হয়**

   ```bash
   # ম্যানুয়ালি rndc পরীক্ষা করুন
   rndc stats

   # rndc কনফিগারেশন পরীক্ষা করুন
   rndc-confgen -a
   ```

4. **কোনো পরিসংখ্যান তৈরি হচ্ছে না**

   ```bash
   # named.conf-এ পরিসংখ্যান সক্রিয় করুন
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### ডিবাগ মোড

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 পারফরম্যান্স বিবেচনা

- **পোলিং বিরতি**: ডিফল্ট 300 সেকেন্ড, মনিটরিংয়ের প্রয়োজন অনুযায়ী সামঞ্জস্য করুন
- **ক্যাশ সময়কাল**: লোড কমাতে পোলগুলোর মাঝখানে পরিসংখ্যান ক্যাশ করা হয়
- **ফাইল I/O**: প্রয়োজন হলেই কেবল পরিসংখ্যান ফাইল পড়া হয়
- **মেমরি ব্যবহার**: সাধারণত 20MB RSS-এর কম
- **CPU ব্যবহার**: ন্যূনতম, শুধুমাত্র পরিসংখ্যান সংগ্রহের সময় সামান্য বাড়ে

## 🤝 অবদান রাখা

অবদানকে স্বাগত জানানো হয়! অনুগ্রহ করে নির্দ্বিধায় একটি Pull Request জমা দিন।

1. রিপোজিটরিটি ফর্ক করুন
2. আপনার ফিচার ব্রাঞ্চ তৈরি করুন (`git checkout -b feature/amazing-feature`)
3. আপনার পরিবর্তনগুলো কমিট করুন (`git commit -m 'feat: add amazing feature'`)
4. ব্রাঞ্চে পুশ করুন (`git push origin feature/amazing-feature`)
5. একটি Pull Request খুলুন

### ডেভেলপমেন্ট সেটআপ

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 লাইসেন্স

এই প্রকল্পটি MIT License-এর অধীনে লাইসেন্সকৃত - বিস্তারিত জানার জন্য [LICENSE](../../../LICENSE) ফাইলটি দেখুন।

## 🔒 নিরাপত্তা

দুর্বলতা রিপোর্ট করার বিস্তারিত তথ্যের জন্য অনুগ্রহ করে আমাদের [নিরাপত্তা নীতি](../../../SECURITY.md) দেখুন।

## 👨💻 লেখক

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 কৃতজ্ঞতা স্বীকার

- চমৎকার DNS সার্ভারের জন্য BIND9 ডেভেলপমেন্ট দল
- শক্তিশালী SNMP মডিউলগুলোর জন্য Perl কমিউনিটি
- এই প্রকল্পের অবদানকারী এবং ব্যবহারকারীরা

## 📚 রিসোর্স

- [BIND9 ডকুমেন্টেশন](https://bind9.readthedocs.io/)
- [Net::SNMP ডকুমেন্টেশন](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID রেজিস্ট্রি](http://www.oid-info.com/)
- [প্রকল্প উইকি](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ রোডম্যাপ

- [ ] অথেনটিকেশনসহ SNMP v3 সমর্থন
- [ ] বিকল্প Prometheus এক্সপোর্টার
- [ ] ওয়েব-ভিত্তিক পরিসংখ্যান ড্যাশবোর্ড
- [ ] Docker কন্টেইনার সমর্থন
- [ ] স্বয়ংক্রিয় ইনস্টলার স্ক্রিপ্ট
- [ ] পারফরম্যান্স মেট্রিক সংগ্রহ
- [ ] ঐতিহাসিক ডেটা সংরক্ষণ
- [ ] সতর্কতা থ্রেশহোল্ড কনফিগারেশন

---

আরও তথ্য, বাগ রিপোর্ট বা ফিচার অনুরোধের জন্য অনুগ্রহ করে [GitHub রিপোজিটরি](https://github.com/somethingwithproof/snmp-bind9-statistics) দেখুন।

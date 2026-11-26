# SNMP BIND9 ስታቲስቲክስ

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · **አማርኛ** · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

ከአውታረ መረብ ክትትል ስርዓቶች ጋር ለማዋሃድ ስታቲስቲክስን በSNMP በኩል የሚያቀርብ ሁሉን አቀፍ በPerl ላይ የተመሰረተ የBIND9 DNS አገልጋዮች ክትትል መፍትሄ።

## 🚀 አጠቃላይ እይታ

SNMP BIND9 ስታቲስቲክስ በBIND9 ውስጣዊ ስታቲስቲክስ እና በSNMP ላይ በተመሰረተ የክትትል መሰረተ ልማት መካከል ያለውን ክፍተት የሚያገናኝ መሳሪያ ነው። `rndc stats`ን በመጠቀም ዝርዝር የDNS አገልጋይ መለኪያዎችን ይሰበስባል እና በSNMP በኩል ያቀርባቸዋል፤ ይህም እንደ Nagios፣ Zabbix፣ PRTG እና ሌሎች ካሉ የክትትል መድረኮች ጋር እንከን የለሽ ውህደት እንዲኖር ያስችላል።

## ✨ ባህሪያት

- 📊 **ሁሉን አቀፍ የስታቲስቲክስ ስብስብ**
  - የጥያቄ ዓይነቶች (A፣ AAAA፣ MX፣ PTR፣ TXT እና ሌሎችም)
  - የምላሽ ኮዶች እና የስህተት መጠኖች
  - የመሸጎጫ ግኝት እና ጉድለት ሬሾዎች
  - የዞን ዝውውር ስታቲስቲክስ
  - የResolver አፈጻጸም መለኪያዎች

- 🔄 **ብልህ መረጃ መሰብሰብ**
  - የሚዋቀሩ የመሰብሰቢያ ክፍተቶች
  - የስርዓት ጫናን ለመቀነስ የመሸጎጫ ዘዴ
  - የግዳጅ እድሳት ችሎታ
  - አውቶማቲክ የስታቲስቲክስ ፋይል ዙር አያያዝ

- 🛡️ **ለድርጅት ዝግጁ**
  - የSNMP v2c ድጋፍ
  - ብጁ የOID ካርታ ስራ
  - ሁሉን አቀፍ የስህተት አያያዝ
  - ከLog4perl ጋር ዝርዝር መዝገብ አያያዝ
  - ለሰላማዊ መዘጋት የምልክት አያያዝ

- 🔧 **ተለዋዋጭ ውቅረት**
  - በINI ላይ የተመሰረቱ የውቅረት ፋይሎች
  - የአካባቢ ተለዋዋጭ ድጋፍ
  - የትዕዛዝ መስመር መለኪያ መሻሪያዎች
  - ለብዙ የBIND9 ምሳሌዎች ድጋፍ

## 📋 መስፈርቶች

### የስርዓት መስፈርቶች

- **ስርዓተ ክወና**: Linux/Unix ከBIND9 ጋር
- **Perl**: ስሪት 5.10 ወይም ከዚያ በላይ
- **BIND9**: `rndc` ተዋቅሮ እና በስራ ላይ ያለ
- **ፈቃዶች**: ወደ BIND9 ስታቲስቲክስ ፋይል የማንበብ መዳረሻ

### የPerl ሞጁሎች

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

## 📦 መጫን

### ከGitHub

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

### Makefile.PLን በመጠቀም

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ ውቅረት

የውቅረት ፋይል `config.ini` ይፍጠሩ:

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

## 🚀 አጠቃቀም

### መሰረታዊ አጠቃቀም

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

### የቋንቋ ድጋፍ

የCLI አጠቃቀም እና የመዝገብ ምርመራ መልዕክቶች ያለ ምንም ውጫዊ የCPAN ጥገኝነት በ`SNMP::BIND9::I18n` በኩል 45 ቋንቋዎችን (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ይደግፋሉ። የቋንቋ አፈታት መጀመሪያ `--lang`ን፣ ቀጥሎ `LC_ALL`፣ `LC_MESSAGES` እና `LANG`ን ያከብራል፤ ካልተገኘ ወደ `en` ይመለሳል። የSNMP OIDዎች፣ የፕሮቶኮል ቶከኖች እና የቁጥር መለኪያ እሴቶች በሁሉም ቋንቋዎች ሳይለወጡ ይቆያሉ።

### እንደ አገልግሎት ማስኬድ

#### የSystemd አገልግሎት

`/etc/systemd/system/bind9-snmp.service`ን ይፍጠሩ:

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

አገልግሎቱን ያንቁ እና ያስጀምሩ:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### የInit.d ስክሪፕት (ነባር ስርዓቶች)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 የSNMP OID ካርታ ስራ

መሳሪያው የሚከተለውን የOID መዋቅር ይጠቀማል:

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

### በSNMP በኩል መጠየቅ

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 ሙከራ

### የአሃድ ሙከራዎች

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### የውህደት ሙከራዎች

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### በእጅ የሚደረግ ሙከራ

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 የክትትል ውህደት

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### የPRTG ብጁ ዳሳሽ

ከተሰጡት OIDዎች ጋር የSNMP Custom Advanced ዳሳሽን ይጠቀሙ

## 🐛 ችግር መፍታት

### የተለመዱ ችግሮች

1. **በስታቲስቲክስ ፋይል ላይ ፈቃድ ተከልክሏል**

   ```bash
   # የፋይል ፈቃዶችን ያረጋግጡ
   ls -l /var/cache/bind/named.stats

   # ፈቃዶችን ያስተካክሉ
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **የSNMP ወደብ አስቀድሞ በጥቅም ላይ ነው**

   ```bash
   # ወደብ 161ን ምን እየተጠቀመበት እንደሆነ ያረጋግጡ
   sudo netstat -tulpn | grep 161

   # በውቅረቱ ውስጥ አማራጭ ወደብ ይጠቀሙ
   port = 1161
   ```

3. **የrndc ትዕዛዝ አልተሳካም**

   ```bash
   # rndcን በእጅ ይሞክሩ
   rndc stats

   # የrndc ውቅረትን ያረጋግጡ
   rndc-confgen -a
   ```

4. **ምንም ስታቲስቲክስ አልተፈጠረም**

   ```bash
   # በnamed.conf ውስጥ ስታቲስቲክስን ያንቁ
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### የማረሚያ ሁኔታ

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 የአፈጻጸም ግምት

- **የመሰብሰቢያ ክፍተት**: ነባሪው 300 ሰከንድ ነው፣ እንደ ክትትል ፍላጎቶች ያስተካክሉ
- **የመሸጎጫ ቆይታ**: ጫናን ለመቀነስ ስታቲስቲክስ በመሰብሰቢያዎች መካከል ይሸጎጣል
- **የፋይል I/O**: የስታቲስቲክስ ፋይል የሚነበበው በሚያስፈልግበት ጊዜ ብቻ ነው
- **የማህደረ ትውስታ አጠቃቀም**: በተለምዶ ከ20MB RSS በታች
- **የCPU አጠቃቀም**: አነስተኛ ሲሆን፣ በስታቲስቲክስ ስብስብ ወቅት ብቻ ይጨምራል

## 🤝 አስተዋጽኦ ማበርከት

አስተዋጽኦዎች በደስታ ይቀበላሉ! እባክዎ Pull Request ለማስገባት አያመንቱ።

1. ማከማቻውን ፎርክ ያድርጉ
2. የባህሪ ቅርንጫፍዎን ይፍጠሩ (`git checkout -b feature/amazing-feature`)
3. ለውጦችዎን ኮሚት ያድርጉ (`git commit -m 'feat: add amazing feature'`)
4. ወደ ቅርንጫፉ ይግፉ (`git push origin feature/amazing-feature`)
5. Pull Request ይክፈቱ

### የልማት ማዋቀር

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 ፈቃድ

ይህ ፕሮጀክት በMIT ፈቃድ ስር የተፈቀደ ነው - ለዝርዝሮች የ[LICENSE](../../../LICENSE) ፋይልን ይመልከቱ።

## 🔒 ደህንነት

ተጋላጭነቶችን ሪፖርት ስለማድረግ ዝርዝሮችን ለማግኘት እባክዎ የ[ደህንነት ፖሊሲያችንን](../../../SECURITY.md) ይመልከቱ።

## 👨💻 ደራሲ

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 ምስጋና

- እጅግ በጣም ጥሩውን የDNS አገልጋይ ስላዘጋጀው የBIND9 ልማት ቡድን
- ጠንካራ የSNMP ሞጁሎችን ስላቀረበው የPerl ማህበረሰብ
- ለዚህ ፕሮጀክት አስተዋጽኦ አበርካቾች እና ተጠቃሚዎች

## 📚 ግብዓቶች

- [የBIND9 ሰነድ](https://bind9.readthedocs.io/)
- [የNet::SNMP ሰነድ](https://metacpan.org/pod/Net::SNMP)
- [የSNMP OID መዝገብ](http://www.oid-info.com/)
- [የፕሮጀክት Wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ የወደፊት ዕቅድ

- [ ] ከማረጋገጫ ጋር የSNMP v3 ድጋፍ
- [ ] የPrometheus ላኪ አማራጭ
- [ ] በድር ላይ የተመሰረተ የስታቲስቲክስ ዳሽቦርድ
- [ ] የDocker ኮንቴይነር ድጋፍ
- [ ] አውቶማቲክ የመጫኛ ስክሪፕት
- [ ] የአፈጻጸም መለኪያዎች ስብስብ
- [ ] ታሪካዊ የውሂብ ማከማቻ
- [ ] የማንቂያ ገደብ ውቅረት

---

ለተጨማሪ መረጃ፣ የስህተት ሪፖርቶች ወይም የባህሪ ጥያቄዎች እባክዎ የ[GitHub ማከማቻውን](https://github.com/somethingwithproof/snmp-bind9-statistics) ይጎብኙ።

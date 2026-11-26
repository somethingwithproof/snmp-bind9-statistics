# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · **ไทย** · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

โซลูชันการมอนิเตอร์แบบครบวงจรที่ใช้ Perl สำหรับเซิร์ฟเวอร์ BIND9 DNS เพื่อเปิดเผยค่าสถิติผ่าน SNMP สำหรับเชื่อมต่อกับระบบมอนิเตอร์เครือข่าย

## 🚀 ภาพรวม

SNMP BIND9 Statistics เป็นเครื่องมือที่เชื่อมช่องว่างระหว่างสถิติในตัวของ BIND9 กับโครงสร้างพื้นฐานการมอนิเตอร์ที่ใช้ SNMP โดยจะรวบรวมเมทริกเซิร์ฟเวอร์ DNS อย่างละเอียดด้วย `rndc stats` และเปิดเผยผ่าน SNMP ช่วยให้เชื่อมต่อกับแพลตฟอร์มมอนิเตอร์อย่าง Nagios, Zabbix, PRTG และอื่นๆ ได้อย่างราบรื่น

## ✨ คุณสมบัติ

- 📊 **การรวบรวมสถิติอย่างครอบคลุม**
  - ประเภทการสืบค้น (A, AAAA, MX, PTR, TXT เป็นต้น)
  - รหัสการตอบกลับและอัตราข้อผิดพลาด
  - อัตราส่วน cache hit/miss
  - สถิติการถ่ายโอนโซน (zone transfer)
  - เมทริกประสิทธิภาพของ resolver

- 🔄 **การดึงข้อมูล (Polling) อย่างชาญฉลาด**
  - กำหนดช่วงเวลาการ polling ได้
  - กลไกแคชเพื่อลดภาระของระบบ
  - ความสามารถในการบังคับรีเฟรชข้อมูล
  - การจัดการการหมุนเวียนไฟล์สถิติอัตโนมัติ

- 🛡️ **พร้อมสำหรับการใช้งานระดับองค์กร**
  - รองรับ SNMP v2c
  - การแมป OID แบบกำหนดเอง
  - การจัดการข้อผิดพลาดอย่างครอบคลุม
  - การบันทึก log อย่างละเอียดด้วย Log4perl
  - การจัดการ signal เพื่อการปิดระบบอย่างสมบูรณ์

- 🔧 **การตั้งค่าที่ยืดหยุ่น**
  - ไฟล์การตั้งค่ารูปแบบ INI
  - รองรับตัวแปรสภาพแวดล้อม
  - การเขียนทับค่าด้วยพารามิเตอร์บรรทัดคำสั่ง
  - รองรับการทำงานกับ BIND9 หลายอินสแตนซ์

## 📋 ความต้องการของระบบ

### ข้อกำหนดด้านระบบ

- **ระบบปฏิบัติการ**: Linux/Unix ที่มี BIND9
- **Perl**: เวอร์ชัน 5.10 ขึ้นไป
- **BIND9**: ที่ตั้งค่า `rndc` และทำงานได้ตามปกติ
- **สิทธิ์การใช้งาน**: สิทธิ์ในการอ่านไฟล์สถิติของ BIND9

### โมดูล Perl

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

## 📦 การติดตั้ง

### จาก GitHub

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

### การใช้ Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ การตั้งค่า

สร้างไฟล์การตั้งค่า `config.ini`:

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

## 🚀 การใช้งาน

### การใช้งานพื้นฐาน

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

### การรองรับหลายภาษา (Localization)

วิธีใช้บน CLI และข้อความวินิจฉัยใน log รองรับ 45 ภาษา (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) โดยไม่มี dependency ภายนอกจาก CPAN ผ่าน `SNMP::BIND9::I18n` ลำดับการเลือกภาษาจะใช้ `--lang` จากนั้นจึงใช้ `LC_ALL`, `LC_MESSAGES` และ `LANG` โดยใช้ `en` เป็นค่าสำรอง ส่วน SNMP OID, โทเค็นโปรโตคอล และค่าตัวเลขของเมทริกจะยังคงเดิมในทุกภาษา

### การรันเป็น Service

#### Systemd Service

สร้างไฟล์ `/etc/systemd/system/bind9-snmp.service`:

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

เปิดใช้งานและเริ่มต้น service:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### สคริปต์ Init.d (ระบบรุ่นเก่า)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 การแมป SNMP OID

เครื่องมือนี้ใช้โครงสร้าง OID ดังต่อไปนี้:

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

### การสืบค้นผ่าน SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 การทดสอบ

### Unit Tests

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integration Tests

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### การทดสอบด้วยตนเอง

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 การเชื่อมต่อกับระบบมอนิเตอร์

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### PRTG Custom Sensor

ใช้เซนเซอร์ SNMP Custom Advanced ร่วมกับ OID ที่กำหนดไว้

## 🐛 การแก้ไขปัญหา

### ปัญหาที่พบบ่อย

1. **ไม่ได้รับสิทธิ์เข้าถึงไฟล์สถิติ (Permission Denied)**

   ```bash
   # ตรวจสอบสิทธิ์ของไฟล์
   ls -l /var/cache/bind/named.stats

   # แก้ไขสิทธิ์
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **พอร์ต SNMP ถูกใช้งานอยู่แล้ว**

   ```bash
   # ตรวจสอบว่ามีอะไรใช้งานพอร์ต 161 อยู่
   sudo netstat -tulpn | grep 161

   # ใช้พอร์ตอื่นในการตั้งค่า
   port = 1161
   ```

3. **คำสั่ง rndc ล้มเหลว**

   ```bash
   # ทดสอบ rndc ด้วยตนเอง
   rndc stats

   # ตรวจสอบการตั้งค่า rndc
   rndc-confgen -a
   ```

4. **ไม่มีการสร้างสถิติ**

   ```bash
   # เปิดใช้งานสถิติใน named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### โหมดดีบัก

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 ข้อควรพิจารณาด้านประสิทธิภาพ

- **ช่วงเวลาการ Polling**: ค่าเริ่มต้น 300 วินาที ปรับตามความต้องการในการมอนิเตอร์
- **ระยะเวลาแคช**: สถิติจะถูกแคชไว้ระหว่างรอบการดึงข้อมูลเพื่อลดภาระระบบ
- **ไฟล์ I/O**: ไฟล์สถิติจะถูกอ่านเฉพาะเมื่อจำเป็นเท่านั้น
- **การใช้หน่วยความจำ**: โดยทั่วไปใช้หน่วยความจำ RSS น้อยกว่า 20MB
- **การใช้ CPU**: ต่ำมาก จะเพิ่มขึ้นเพียงเล็กน้อยเฉพาะช่วงรวบรวมสถิติ

## 🤝 การมีส่วนร่วม

ยินดีต้อนรับการมีส่วนร่วมทุกท่าน! สามารถส่ง Pull Request เข้ามาได้ตามขั้นตอนดังนี้:

1. Fork รีโพสิทอรีนี้
2. สร้าง feature branch ของคุณ (`git checkout -b feature/amazing-feature`)
3. คอมมิตการเปลี่ยนแปลงของคุณ (`git commit -m 'feat: add amazing feature'`)
4. Push ไปยัง branch (`git push origin feature/amazing-feature`)
5. เปิด Pull Request

### การตั้งค่าสำหรับการพัฒนา

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 สัญญาอนุญาต

โปรเจกต์นี้อยู่ภายใต้สัญญาอนุญาต MIT License - ดูรายละเอียดเพิ่มเติมในไฟล์ [LICENSE](../../../LICENSE)

## 🔒 ความปลอดภัย

โปรดดู [นโยบายความปลอดภัย](../../../SECURITY.md) ของเราสำหรับรายละเอียดการรายงานช่องโหว่

## 👨💻 ผู้พัฒนา

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 กิตติกรรมประกาศ

- ทีมพัฒนา BIND9 สำหรับ DNS เซิร์ฟเวอร์ที่ยอดเยี่ยม
- ชุมชน Perl สำหรับโมดูล SNMP ที่แข็งแกร่ง
- ผู้ร่วมพัฒนาและผู้ใช้งานโปรเจกต์นี้ทุกท่าน

## 📚 แหล่งข้อมูลเพิ่มเติม

- [เอกสารประกอบ BIND9](https://bind9.readthedocs.io/)
- [เอกสารประกอบ Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [ทะเบียน SNMP OID](http://www.oid-info.com/)
- [Wiki ของโปรเจกต์](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ แผนพัฒนา (Roadmap)

- [ ] รองรับ SNMP v3 พร้อมการยืนยันตัวตน
- [ ] ทางเลือกตัวส่งออกข้อมูลสำหรับ Prometheus (Prometheus exporter)
- [ ] แดชบอร์ดแสดงสถิติบนเว็บ
- [ ] รองรับคอนเทนเนอร์ Docker
- [ ] สคริปต์ติดตั้งอัตโนมัติ
- [ ] การรวบรวมเมทริกด้านประสิทธิภาพ
- [ ] การจัดเก็บข้อมูลย้อนหลัง
- [ ] การตั้งค่าเกณฑ์การแจ้งเตือน

---

สำหรับข้อมูลเพิ่มเติม รายงานบั๊ก หรือคำขอคุณสมบัติใหม่ โปรดเยี่ยมชม [GitHub repository](https://github.com/somethingwithproof/snmp-bind9-statistics).

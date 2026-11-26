# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · **Tiếng Việt** · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Giải pháp giám sát toàn diện viết bằng Perl dành cho máy chủ DNS BIND9, giúp xuất các số liệu thống kê qua SNMP để tích hợp với các hệ thống giám sát mạng.

## 🚀 Tổng quan

SNMP BIND9 Statistics là công cụ giúp thu hẹp khoảng cách giữa tính năng thống kê tích hợp của BIND9 và hạ tầng giám sát dựa trên SNMP. Công cụ thu thập các chỉ số chi tiết của máy chủ DNS bằng lệnh `rndc stats` và xuất chúng qua SNMP, cho phép tích hợp liền mạch với các nền tảng giám sát như Nagios, Zabbix, PRTG và nhiều hệ thống khác.

## ✨ Tính năng

- 📊 **Thu thập thống kê toàn diện**
  - Loại truy vấn (A, AAAA, MX, PTR, TXT, v.v.)
  - Mã phản hồi và tỷ lệ lỗi
  - Tỷ lệ trúng/trượt bộ nhớ đệm
  - Thống kê truyền vùng (zone transfer)
  - Chỉ số hiệu suất bộ phân giải (resolver)

- 🔄 **Thăm dò thông minh**
  - Khoảng thời gian thăm dò có thể cấu hình
  - Cơ chế lưu đệm để giảm tải hệ thống
  - Khả năng buộc làm mới
  - Tự động xử lý xoay vòng tệp thống kê

- 🛡️ **Sẵn sàng cho doanh nghiệp**
  - Hỗ trợ SNMP v2c
  - Ánh xạ OID tùy chỉnh
  - Xử lý lỗi toàn diện
  - Ghi nhật ký chi tiết với Log4perl
  - Xử lý tín hiệu để tắt an toàn

- 🔧 **Cấu hình linh hoạt**
  - Tệp cấu hình dạng INI
  - Hỗ trợ biến môi trường
  - Ghi đè tham số qua dòng lệnh
  - Hỗ trợ nhiều phiên bản BIND9

## 📋 Yêu cầu

### Yêu cầu hệ thống

- **Hệ điều hành**: Linux/Unix có cài đặt BIND9
- **Perl**: Phiên bản 5.10 trở lên
- **BIND9**: Đã cấu hình và vận hành `rndc`
- **Quyền hạn**: Quyền đọc tệp thống kê của BIND9

### Mô-đun Perl

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

## 📦 Cài đặt

### Từ GitHub

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

### Sử dụng Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Cấu hình

Tạo tệp cấu hình `config.ini`:

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

## 🚀 Cách sử dụng

### Sử dụng cơ bản

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

### Bản địa hóa

Hướng dẫn sử dụng CLI và thông báo chẩn đoán nhật ký hỗ trợ 45 ngôn ngữ địa phương (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) mà không cần phụ thuộc CPAN bên ngoài thông qua `SNMP::BIND9::I18n`. Thứ tự phân giải ưu tiên `--lang`, sau đó đến `LC_ALL`, `LC_MESSAGES` và `LANG`, rồi quay về `en`. Các OID SNMP, token giao thức và giá trị chỉ số dạng số giữ nguyên trên tất cả các ngôn ngữ.

### Chạy dưới dạng dịch vụ

#### Dịch vụ Systemd

Tạo `/etc/systemd/system/bind9-snmp.service`:

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

Kích hoạt và khởi động dịch vụ:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Kịch bản Init.d (Hệ thống cũ)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Ánh xạ SNMP OID

Công cụ sử dụng cấu trúc OID sau:

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

### Truy vấn qua SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Kiểm thử

### Kiểm thử đơn vị

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Kiểm thử tích hợp

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Kiểm thử thủ công

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Tích hợp giám sát

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Cảm biến tùy chỉnh PRTG

Sử dụng cảm biến SNMP Custom Advanced với các OID được cung cấp

## 🐛 Xử lý sự cố

### Các vấn đề thường gặp

1. **Từ chối quyền truy cập trên tệp thống kê**

   ```bash
   # Kiểm tra quyền tệp
   ls -l /var/cache/bind/named.stats

   # Sửa quyền
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Cổng SNMP đã được sử dụng**

   ```bash
   # Kiểm tra tiến trình đang dùng cổng 161
   sudo netstat -tulpn | grep 161

   # Dùng cổng thay thế trong cấu hình
   port = 1161
   ```

3. **Lệnh rndc thất bại**

   ```bash
   # Kiểm tra rndc thủ công
   rndc stats

   # Kiểm tra cấu hình rndc
   rndc-confgen -a
   ```

4. **Không có số liệu thống kê nào được tạo**

   ```bash
   # Bật thống kê trong named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Chế độ gỡ lỗi

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Lưu ý về hiệu suất

- **Khoảng thời gian thăm dò**: Mặc định 300 giây, điều chỉnh dựa theo nhu cầu giám sát
- **Thời lượng bộ nhớ đệm**: Số liệu thống kê được lưu đệm giữa các lần thăm dò để giảm tải
- **Đọc/ghi tệp**: Tệp thống kê chỉ được đọc khi cần thiết
- **Mức sử dụng bộ nhớ**: Thường dưới 20MB RSS
- **Mức sử dụng CPU**: Rất thấp, chỉ tăng nhẹ trong lúc thu thập số liệu thống kê

## 🤝 Đóng góp

Mọi đóng góp đều được hoan nghênh! Vui lòng gửi Pull Request.

1. Fork kho lưu trữ
2. Tạo nhánh tính năng của bạn (`git checkout -b feature/amazing-feature`)
3. Commit các thay đổi của bạn (`git commit -m 'feat: add amazing feature'`)
4. Đẩy lên nhánh (`git push origin feature/amazing-feature`)
5. Mở Pull Request

### Thiết lập môi trường phát triển

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Giấy phép

Dự án này được cấp phép theo Giấy phép MIT - xem tệp [LICENSE](../../../LICENSE) để biết chi tiết.

## 🔒 Bảo mật

Vui lòng xem [Chính sách bảo mật](../../../SECURITY.md) của chúng tôi để biết chi tiết về việc báo cáo lỗ hổng.

## 👨💻 Tác giả

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Lời cảm ơn

- Đội ngũ phát triển BIND9 vì máy chủ DNS xuất sắc
- Cộng đồng Perl vì các mô-đun SNMP mạnh mẽ
- Những người đóng góp và người dùng của dự án này

## 📚 Tài nguyên

- [Tài liệu BIND9](https://bind9.readthedocs.io/)
- [Tài liệu Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Cơ quan đăng ký SNMP OID](http://www.oid-info.com/)
- [Wiki dự án](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Lộ trình

- [ ] Hỗ trợ SNMP v3 có xác thực
- [ ] Giải pháp thay thế Prometheus exporter
- [ ] Bảng điều khiển thống kê trên web
- [ ] Hỗ trợ container Docker
- [ ] Kịch bản cài đặt tự động
- [ ] Thu thập chỉ số hiệu suất
- [ ] Lưu trữ dữ liệu lịch sử
- [ ] Cấu hình ngưỡng cảnh báo

---

Để biết thêm thông tin, báo cáo lỗi hoặc yêu cầu tính năng, vui lòng truy cập [kho lưu trữ GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

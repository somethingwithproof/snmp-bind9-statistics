# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · **Bahasa Indonesia**

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Solusi pemantauan berbasis Perl yang komprehensif untuk server DNS BIND9 yang mengekspos statistik melalui SNMP untuk integrasi dengan sistem pemantauan jaringan.

## 🚀 Ikhtisar

SNMP BIND9 Statistics adalah alat yang menjembatani statistik bawaan BIND9 dengan infrastruktur pemantauan berbasis SNMP. Alat ini mengumpulkan metrik server DNS secara terperinci menggunakan `rndc stats` dan mengeksposnya melalui SNMP, sehingga memungkinkan integrasi yang mulus dengan platform pemantauan seperti Nagios, Zabbix, PRTG, dan lainnya.

## ✨ Fitur

- 📊 **Pengumpulan Statistik Komprehensif**
  - Jenis kueri (A, AAAA, MX, PTR, TXT, dll.)
  - Kode respons dan tingkat kesalahan
  - Rasio cache hit/miss
  - Statistik transfer zona
  - Metrik performa resolver

- 🔄 **Polling Cerdas**
  - Interval polling yang dapat dikonfigurasi
  - Mekanisme caching untuk mengurangi beban sistem
  - Kemampuan muat ulang paksa (force refresh)
  - Penanganan rotasi file statistik secara otomatis

- 🛡️ **Siap untuk Enterprise**
  - Dukungan SNMP v2c
  - Pemetaan OID kustom
  - Penanganan kesalahan yang komprehensif
  - Pencatatan log terperinci dengan Log4perl
  - Penanganan sinyal untuk penghentian yang anggun (graceful shutdown)

- 🔧 **Konfigurasi Fleksibel**
  - File konfigurasi berbasis INI
  - Dukungan variabel lingkungan
  - Penimpaan parameter baris perintah
  - Dukungan beberapa instans BIND9

## 📋 Persyaratan

### Persyaratan Sistem

- **Sistem Operasi**: Linux/Unix dengan BIND9
- **Perl**: Versi 5.10 atau lebih tinggi
- **BIND9**: Dengan `rndc` yang terkonfigurasi dan beroperasi
- **Hak Akses**: Akses baca ke file statistik BIND9

### Modul Perl

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

## 📦 Instalasi

### Dari GitHub

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

### Menggunakan Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Konfigurasi

Buat file konfigurasi `config.ini`:

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

## 🚀 Penggunaan

### Penggunaan Dasar

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

### Lokalisasi

Penggunaan CLI dan diagnostik log mendukung 45 lokal (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) tanpa dependensi CPAN eksternal melalui `SNMP::BIND9::I18n`. Resolusi mematuhi `--lang`, lalu `LC_ALL`, `LC_MESSAGES`, dan `LANG`, dengan fallback ke `en`. SNMP OID, token protokol, dan nilai metrik numerik tetap tidak berubah di semua lokal.

### Menjalankan sebagai Layanan

#### Layanan Systemd

Buat `/etc/systemd/system/bind9-snmp.service`:

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

Aktifkan dan jalankan layanan:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Skrip Init.d (Sistem Lama)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Pemetaan SNMP OID

Alat ini menggunakan struktur OID berikut:

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

### Melakukan Kueri melalui SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Pengujian

### Pengujian Unit

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Pengujian Integrasi

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Pengujian Manual

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Integrasi Pemantauan

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Sensor Kustom PRTG

Gunakan sensor SNMP Custom Advanced dengan OID yang disediakan

## 🐛 Pemecahan Masalah

### Masalah Umum

1. **Izin Ditolak pada File Statistik**

   ```bash
   # Periksa izin file
   ls -l /var/cache/bind/named.stats

   # Perbaiki izin
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Port SNMP Sudah Digunakan**

   ```bash
   # Periksa apa yang menggunakan port 161
   sudo netstat -tulpn | grep 161

   # Gunakan port alternatif di konfigurasi
   port = 1161
   ```

3. **Perintah rndc Gagal**

   ```bash
   # Uji rndc secara manual
   rndc stats

   # Periksa konfigurasi rndc
   rndc-confgen -a
   ```

4. **Tidak Ada Statistik yang Dihasilkan**

   ```bash
   # Aktifkan statistik di named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Mode Debug

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Pertimbangan Performa

- **Interval Polling**: Default 300 detik, sesuaikan berdasarkan kebutuhan pemantauan
- **Durasi Cache**: Statistik di-cache di antara polling untuk mengurangi beban
- **I/O File**: File statistik dibaca hanya saat diperlukan
- **Penggunaan Memori**: Biasanya di bawah 20MB RSS
- **Penggunaan CPU**: Minimal, hanya melonjak saat pengumpulan statistik

## 🤝 Berkontribusi

Kontribusi sangat kami sambut! Silakan ajukan Pull Request.

1. Fork repositori ini
2. Buat branch fitur Anda (`git checkout -b feature/amazing-feature`)
3. Commit perubahan Anda (`git commit -m 'feat: add amazing feature'`)
4. Push ke branch (`git push origin feature/amazing-feature`)
5. Buka Pull Request

### Penyiapan Pengembangan

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lisensi

Proyek ini dilisensikan di bawah Lisensi MIT - lihat file [LICENSE](../../../LICENSE) untuk detailnya.

## 🔒 Keamanan

Silakan lihat [Kebijakan Keamanan](../../../SECURITY.md) kami untuk detail tentang pelaporan kerentanan.

## 👨💻 Penulis

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Ucapan Terima Kasih

- Tim pengembang BIND9 atas server DNS yang luar biasa
- Komunitas Perl atas modul SNMP yang tangguh
- Para kontributor dan pengguna proyek ini

## 📚 Sumber Daya

- [Dokumentasi BIND9](https://bind9.readthedocs.io/)
- [Dokumentasi Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Registri SNMP OID](http://www.oid-info.com/)
- [Wiki Proyek](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Peta Jalan

- [ ] Dukungan SNMP v3 dengan autentikasi
- [ ] Alternatif eksportir Prometheus
- [ ] Dasbor statistik berbasis web
- [ ] Dukungan kontainer Docker
- [ ] Skrip penginstal otomatis
- [ ] Pengumpulan metrik performa
- [ ] Penyimpanan data historis
- [ ] Konfigurasi ambang batas peringatan

---

Untuk informasi lebih lanjut, laporan bug, atau permintaan fitur, silakan kunjungi [repositori GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

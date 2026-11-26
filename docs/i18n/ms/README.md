# Statistik SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · **Bahasa Melayu** · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Penyelesaian pemantauan komprehensif berasaskan Perl untuk pelayan DNS BIND9 yang mendedahkan statistik melalui SNMP untuk integrasi dengan sistem pemantauan rangkaian.

## 🚀 Gambaran Keseluruhan

Statistik SNMP BIND9 ialah alat yang merapatkan jurang antara statistik terbina dalam BIND9 dengan infrastruktur pemantauan berasaskan SNMP. Ia mengumpulkan metrik pelayan DNS terperinci menggunakan `rndc stats` dan mendedahkannya melalui SNMP, membolehkan integrasi lancar dengan platform pemantauan seperti Nagios, Zabbix, PRTG, dan lain-lain.

## ✨ Ciri-ciri

- 📊 **Pengumpulan Statistik Komprehensif**
  - Jenis pertanyaan (A, AAAA, MX, PTR, TXT, dll.)
  - Kod respons dan kadar ralat
  - Nisbah hit/miss tembolok
  - Statistik pemindahan zon
  - Metrik prestasi penyelesai

- 🔄 **Peninjauan Pintar**
  - Selang peninjauan yang boleh dikonfigurasikan
  - Mekanisme tembolok untuk mengurangkan beban sistem
  - Keupayaan segar semula paksa
  - Pengendalian penggiliran fail statistik secara automatik

- 🛡️ **Sedia untuk Perusahaan**
  - Sokongan SNMP v2c
  - Pemetaan OID tersuai
  - Pengendalian ralat yang komprehensif
  - Pengelogan terperinci dengan Log4perl
  - Pengendalian isyarat untuk penutupan teratur

- 🔧 **Konfigurasi Fleksibel**
  - Fail konfigurasi berasaskan INI
  - Sokongan pemboleh ubah persekitaran
  - Penggantian parameter baris perintah
  - Sokongan berbilang tika BIND9

## 📋 Keperluan

### Keperluan Sistem

- **Sistem Pengendalian**: Linux/Unix dengan BIND9
- **Perl**: Versi 5.10 atau lebih tinggi
- **BIND9**: Dengan `rndc` dikonfigurasikan dan beroperasi
- **Keistimewaan**: Akses bacaan ke fail statistik BIND9

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

## 📦 Pemasangan

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

Cipta fail konfigurasi `config.ini`:

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

### Penggunaan Asas

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

### Penyetempatan

Penggunaan CLI dan diagnostik log menyokong 45 lokal (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) tanpa kebergantungan CPAN luaran melalui `SNMP::BIND9::I18n`. Peleraian mematuhi `--lang`, kemudian `LC_ALL`, `LC_MESSAGES`, dan `LANG`, dengan sandaran kepada `en`. OID SNMP, token protokol, dan nilai metrik berangka kekal tidak berubah merentas semua lokal.

### Menjalankan sebagai Perkhidmatan

#### Perkhidmatan Systemd

Cipta `/etc/systemd/system/bind9-snmp.service`:

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

Dayakan dan mulakan perkhidmatan:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Skrip Init.d (Sistem Legasi)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Pemetaan OID SNMP

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

### Pertanyaan melalui SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Pengujian

### Ujian Unit

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Ujian Integrasi

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

### Penderia Tersuai PRTG

Gunakan penderia SNMP Custom Advanced dengan OID yang disediakan

## 🐛 Penyelesaian Masalah

### Isu Biasa

1. **Kebenaran Ditolak pada Fail Statistik**

   ```bash
   # Semak kebenaran fail
   ls -l /var/cache/bind/named.stats

   # Betulkan kebenaran
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Port SNMP Sudah Digunakan**

   ```bash
   # Semak apa yang menggunakan port 161
   sudo netstat -tulpn | grep 161

   # Gunakan port alternatif dalam konfigurasi
   port = 1161
   ```

3. **Perintah rndc Gagal**

   ```bash
   # Uji rndc secara manual
   rndc stats

   # Semak konfigurasi rndc
   rndc-confgen -a
   ```

4. **Tiada Statistik Dijana**

   ```bash
   # Dayakan statistik dalam named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Mod Nyahpepijat

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Pertimbangan Prestasi

- **Selang Peninjauan**: Lalai 300 saat, laraskan mengikut keperluan pemantauan
- **Tempoh Tembolok**: Statistik disimpan dalam tembolok antara peninjauan untuk mengurangkan beban
- **I/O Fail**: Fail statistik dibaca hanya apabila diperlukan
- **Penggunaan Memori**: Lazimnya di bawah 20MB RSS
- **Penggunaan CPU**: Minimum, melonjak hanya semasa pengumpulan statistik

## 🤝 Sumbangan

Sumbangan amat dialu-alukan! Sila hantarkan Pull Request.

1. Fork repositori
2. Cipta cawangan ciri anda (`git checkout -b feature/amazing-feature`)
3. Komit perubahan anda (`git commit -m 'feat: add amazing feature'`)
4. Tolak ke cawangan (`git push origin feature/amazing-feature`)
5. Buka Pull Request

### Persediaan Pembangunan

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lesen

Projek ini dilesenkan di bawah Lesen MIT - lihat fail [LICENSE](../../../LICENSE) untuk butiran.

## 🔒 Keselamatan

Sila lihat [Dasar Keselamatan](../../../SECURITY.md) kami untuk butiran mengenai pelaporan kerentanan.

## 👨💻 Pengarang

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Penghargaan

- Pasukan pembangunan BIND9 untuk pelayan DNS yang cemerlang
- Komuniti Perl untuk modul SNMP yang mantap
- Penyumbang dan pengguna projek ini

## 📚 Sumber

- [Dokumentasi BIND9](https://bind9.readthedocs.io/)
- [Dokumentasi Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Pendaftar OID SNMP](http://www.oid-info.com/)
- [Wiki Projek](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Pelan Hala Tuju

- [ ] Sokongan SNMP v3 dengan pengesahan
- [ ] Alternatif pengeksport Prometheus
- [ ] Papan pemuka statistik berasaskan web
- [ ] Sokongan kontena Docker
- [ ] Skrip pemasang automatik
- [ ] Pengumpulan metrik prestasi
- [ ] Storan data sejarah
- [ ] Konfigurasi ambang makluman

---

Untuk maklumat lanjut, laporan pepijat, atau permintaan ciri, sila lawati [repositori GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

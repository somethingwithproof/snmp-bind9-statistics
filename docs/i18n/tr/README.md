# SNMP BIND9 İstatistikleri

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · **Türkçe** · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

BIND9 DNS sunucuları için istatistikleri ağ izleme sistemleriyle entegrasyon amacıyla SNMP üzerinden dışa aktaran kapsamlı, Perl tabanlı bir izleme çözümü.

## 🚀 Genel Bakış

SNMP BIND9 İstatistikleri, BIND9'un yerleşik istatistikleri ile SNMP tabanlı izleme altyapısı arasındaki boşluğu dolduran bir araçtır. `rndc stats` kullanarak ayrıntılı DNS sunucusu metriklerini toplar ve bunları SNMP üzerinden sunarak Nagios, Zabbix, PRTG ve diğer izleme platformlarıyla sorunsuz entegrasyon sağlar.

## ✨ Özellikler

- 📊 **Kapsamlı İstatistik Toplama**
  - Sorgu türleri (A, AAAA, MX, PTR, TXT vb.)
  - Yanıt kodları ve hata oranları
  - Önbellek isabet/iskalama oranları
  - Bölge (zone) aktarım istatistikleri
  - Çözümleyici (resolver) performans metrikleri

- 🔄 **Akıllı Yoklama (Polling)**
  - Yapılandırılabilir yoklama aralıkları
  - Sistem yükünü azaltmak için önbellekleme mekanizması
  - Zorla yenileme özelliği
  - Otomatik istatistik dosyası döndürme (rotation) yönetimi

- 🛡️ **Kurumsal Kullanıma Hazır**
  - SNMP v2c desteği
  - Özel OID eşlemesi
  - Kapsamlı hata yönetimi
  - Log4perl ile ayrıntılı günlük kaydı
  - Düzgün kapatma için sinyal yönetimi

- 🔧 **Esnek Yapılandırma**
  - INI tabanlı yapılandırma dosyaları
  - Ortam değişkeni desteği
  - Komut satırı parametre geçersiz kılmaları
  - Çoklu BIND9 örneği desteği

## 📋 Gereksinimler

### Sistem Gereksinimleri

- **İşletim Sistemi**: BIND9 ile Linux/Unix
- **Perl**: Sürüm 5.10 veya üzeri
- **BIND9**: `rndc` yapılandırılmış ve çalışır durumda
- **Yetkiler**: BIND9 istatistik dosyasına okuma erişimi

### Perl Modülleri

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

## 📦 Kurulum

### GitHub'dan Kurulum

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

### Makefile.PL Kullanarak

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Yapılandırma

Bir `config.ini` yapılandırma dosyası oluşturun:

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

## 🚀 Kullanım

### Temel Kullanım

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

### Yerelleştirme

CLI kullanımı ve günlük tanılama iletileri, `SNMP::BIND9::I18n` aracılığıyla sıfır harici CPAN bağımlılığı ile 45 yerel ayarı (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) destekler. Çözümleme `--lang`, ardından `LC_ALL`, `LC_MESSAGES` ve `LANG` değişkenlerini dikkate alır ve `en` diline geri döner. SNMP OID'leri, protokol belirteçleri ve sayısal metrik değerleri tüm yerel ayarlarda değişmeden kalır.

### Servis Olarak Çalıştırma

#### Systemd Servisi

`/etc/systemd/system/bind9-snmp.service` dosyasını oluşturun:

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

Servisi etkinleştirin ve başlatın:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d Betiği (Eski Sistemler)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID Eşlemesi

Araç aşağıdaki OID yapısını kullanır:

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

### SNMP Üzerinden Sorgulama

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Test Etme

### Birim Testleri

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Entegrasyon Testleri

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Manuel Test

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 İzleme Entegrasyonu

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### PRTG Özel Sensörü

Sağlanan OID'ler ile SNMP Custom Advanced sensörünü kullanın

## 🐛 Sorun Giderme

### Yaygın Sorunlar

1. **İstatistik Dosyasında İzin Reddedildi (Permission Denied)**

   ```bash
   # Dosya izinlerini kontrol edin
   ls -l /var/cache/bind/named.stats

   # İzinleri düzeltin
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP Bağlantı Noktası Zaten Kullanımda**

   ```bash
   # 161 numaralı bağlantı noktasını neyin kullandığını kontrol edin
   sudo netstat -tulpn | grep 161

   # Yapılandırmada alternatif bağlantı noktası kullanın
   port = 1161
   ```

3. **rndc Komutu Başarısız Oluyor**

   ```bash
   # rndc'yi manuel olarak test edin
   rndc stats

   # rndc yapılandırmasını kontrol edin
   rndc-confgen -a
   ```

4. **İstatistik Üretilmiyor**

   ```bash
   # named.conf içinde istatistikleri etkinleştirin
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Hata Ayıklama Modu

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Performans Değerlendirmeleri

- **Yoklama Aralığı**: Varsayılan 300 saniye, izleme ihtiyaçlarına göre ayarlayın
- **Önbellek Süresi**: Yükü azaltmak için istatistikler yoklamalar arasında önbelleğe alınır
- **Dosya G/Ç**: İstatistik dosyası yalnızca gerektiğinde okunur
- **Bellek Kullanımı**: Genellikle 20MB RSS altındadır
- **CPU Kullanımı**: Minimum düzeydedir, yalnızca istatistik toplama sırasında kısa süreli artış gösterir

## 🤝 Katkıda Bulunma

Katkılarınızı bekliyoruz! Lütfen bir Pull Request göndermekten çekinmeyin.

1. Depoyu çatallayın (Fork)
2. Özellik dalınızı oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'feat: add amazing feature'`)
4. Dalınızı gönderin (`git push origin feature/amazing-feature`)
5. Bir Pull Request açın

### Geliştirme Ortamı Kurulumu

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lisans

Bu proje MIT Lisansı ile lisanslanmıştır - ayrıntılar için [LICENSE](../../../LICENSE) dosyasına bakın.

## 🔒 Güvenlik

Güvenlik açıklarını bildirmeyle ilgili ayrıntılar için lütfen [Güvenlik Politikamıza](../../../SECURITY.md) bakın.

## 👨💻 Yazar

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Teşekkürler

- Mükemmel DNS sunucusu için BIND9 geliştirme ekibine
- Sağlam SNMP modülleri için Perl topluluğuna
- Bu projenin katkıcılarına ve kullanıcılarına

## 📚 Kaynaklar

- [BIND9 Dokümantasyonu](https://bind9.readthedocs.io/)
- [Net::SNMP Dokümantasyonu](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID Kayıt Defteri](http://www.oid-info.com/)
- [Proje Wikisi](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Yol Haritası

- [ ] Kimlik doğrulamalı SNMP v3 desteği
- [ ] Prometheus exporter alternatifi
- [ ] Web tabanlı istatistik panosu
- [ ] Docker kapsayıcı desteği
- [ ] Otomatik kurulum betiği
- [ ] Performans metrikleri toplama
- [ ] Geçmiş veri depolama
- [ ] Uyarı eşiği yapılandırması

---

Daha fazla bilgi, hata bildirimi veya özellik istekleri için lütfen [GitHub deposunu](https://github.com/somethingwithproof/snmp-bind9-statistics) ziyaret edin.

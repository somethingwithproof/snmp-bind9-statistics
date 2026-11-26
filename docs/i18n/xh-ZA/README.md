# Iinkcukacha-manani ze-SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · **isiXhosa** · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Isisombululo esibanzi sokubeka iliso esisekelwe kwi-Perl kwiiseva ze-DNS ze-BIND9 esivelisa iinkcukacha-manani nge-SNMP ukuze zidibaniswe neenkqubo zokubeka iliso kwinethiwekhi.

## 🚀 Isishwankathelo

I-SNMP BIND9 Statistics sisixhobo esivala umsantsa phakathi kweenkcukacha-manani ezakhelwe ngaphakathi ze-BIND9 kunye nesiseko sokubeka iliso esisekelwe kwi-SNMP. Iqokelela iimetrikhi ezineenkcukacha zeseva ye-DNS isebenzisa i-`rndc stats` kwaye izivelise nge-SNMP, ivumela ukudibanisa okungenamthungo namaqonga okubeka iliso afana ne-Nagios, i-Zabbix, i-PRTG, namanye.

## ✨ Iimpawu

- 📊 **Uqokelelo oluBanzi lweeNkcukacha-manani**
  - Iindidi zemibuzo (A, AAAA, MX, PTR, TXT, njl.njl.)
  - Iikhowudi zeempendulo kunye namazinga eempazamo
  - Imilinganiselo yokubetha/yokuphoswa kwe-cache
  - Iinkcukacha-manani zokudluliselwa kwezowuni
  - Iimetrikhi zokusebenza kwe-resolver

- 🔄 **Uhlolo oluKrelekrele**
  - Amathuba ohlolo anokuqwalaselwa
  - Indlela ye-cache yokunciphisa umthwalo wenkqubo
  - Amandla okunyanzela uhlaziyo
  - Ukuphathwa okuzenzekelayo kokujikeleza kweefayile zeenkcukacha-manani

- 🛡️ **Ilungele amaShishini**
  - Inkxaso ye-SNMP v2c
  - Imephu ye-OID yokuzikhethela
  - Ukuphathwa kweempazamo okubanzi
  - Ukurekhodwa kweengxelo ezineenkcukacha nge-Log4perl
  - Ukuphathwa kweesignali ukuze kuvalwe kakuhle

- 🔧 **Uqwalaselo oluBhetyebhetye**
  - Iifayile zoqwalaselo ezisekelwe kwi-INI
  - Inkxaso yeziguquguquki zendawo
  - Ukugqithiswa kwepharamitha yomgca womyalelo
  - Inkxaso yemizekelo emininzi ye-BIND9

## 📋 Iimfuno

### Iimfuno zeNkqubo

- **Inkqubo yokuSebenza**: I-Linux/Unix ene-BIND9
- **Perl**: Inguqulelo 5.10 okanye entsha
- **BIND9**: Ene-`rndc` eqwalaselweyo kwaye isebenza
- **Amalungelo**: Ukufikelela kokufunda kwifayile yeenkcukacha-manani ye-BIND9

### Iimodyuli ze-Perl

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

## 📦 Ufakelo

### Ukusuka kwi-GitHub

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

### Ukusebenzisa i-Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Uqwalaselo

Yenza ifayile yoqwalaselo ethi `config.ini`:

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

### Iziguquguquki zeNdawo

Ungagqitha uqwalaselo usebenzisa iziguquguquki zendawo:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Usetyenziso

### Usetyenziso oluSisiseko

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

### Iilwimi noGuqulelo

Usetyenziso lwe-CLI kunye nokuxilonga kwengxelo kuxhasa iilwimi ezingama-45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ngaphandle kwezixhomekeko zangaphandle ze-CPAN nge-`SNMP::BIND9::I18n`. Ukukhethwa kolwimi kuhlonipha u-`--lang`, emva koko u-`LC_ALL`, `LC_MESSAGES`, kunye no-`LANG`, kubuyele ku-`en` xa zingekho. Ii-OID ze-SNMP, iithokheni zeprotokholi, kunye namaxabiso amanani eemetrikhi zihlala zingatshintshanga kuzo zonke iilwimi.

### Ukuqhuba njengeNkonzo

#### Inkonzo ye-Systemd

Yenza i-`/etc/systemd/system/bind9-snmp.service`:

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

Vula kwaye uqale inkonzo:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Iskripthi se-Init.d (Iinkqubo eziNdala)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Imephu ye-SNMP OID

Isixhobo sisebenzisa olu lwakhiwo lwe-OID lulandelayo:

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

### Ukubuza nge-SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Uvavanyo

### Uvavanyo lweYunithi

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Uvavanyo lokuDibanisa

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Uvavanyo olwenziwa ngesandla

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Ukudibanisa nokuBeka iLiso

### I-Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Ithempleyithi ye-Zabbix

Ngenisa ithempleyithi ye-Zabbix ebonelelweyo ukusuka kwi-`contrib/zabbix/bind9-snmp-template.xml`

### Inzwa yokuZikhethela ye-PRTG

Sebenzisa inzwa ye-SNMP Custom Advanced ngee-OID ezibonelelweyo

## 🐛 Ukusombulula iiNgxaki

### Iingxaki eziQhelekileyo

1. **Imvume Yaliwe kwiFayile yeeNkcukacha-manani**

   ```bash
   # Hlola iimvume zefayile
   ls -l /var/cache/bind/named.stats

   # Lungisa iimvume
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Izibuko le-SNMP Sele liSetyenziswa**

   ```bash
   # Hlola okusebenzisa izibuko le-161
   sudo netstat -tulpn | grep 161

   # Sebenzisa elinye izibuko kuqwalaselo
   port = 1161
   ```

3. **Umyalelo we-rndc uyasilela**

   ```bash
   # Vavanya i-rndc ngesandla
   rndc stats

   # Hlola uqwalaselo lwe-rndc
   rndc-confgen -a
   ```

4. **Akukho Nkcukacha-manani Ziveliswayo**

   ```bash
   # Vula iinkcukacha-manani kwi-named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Imowudi yokuLungisa iiMpazamo

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Izinto eziQwalaselwayo ngokuSebenza

- **Ithuba lokuHlola**: Imizuzwana engama-300 ngokungagqibekanga, yilungelelanise ngokweemfuno zokubeka iliso
- **Ubude beXesha le-Cache**: Iinkcukacha-manani zigcinwa kwi-cache phakathi kohlolo ngalunye ukunciphisa umthwalo
- **I-File I/O**: Ifayile yeenkcukacha-manani ifundwa kuphela xa kufuneka
- **Usetyenziso lweMemori**: Ngokuqhelekileyo lungaphantsi kwe-20MB RSS
- **Usetyenziso lwe-CPU**: Luncinci kakhulu, lunyuka kuphela ngexesha lokuqokelelwa kweenkcukacha-manani

## 🤝 Ukufaka iGalelo

Amagalelo amkelekile! Nceda ukhululeke ukuthumela i-Pull Request.

1. Yenza i-fork yerepository
2. Yenza isebe lakho lophawu olutsha (`git checkout -b feature/amazing-feature`)
3. Faka utshintsho lwakho kwi-commit (`git commit -m 'feat: add amazing feature'`)
4. Thumela kwelo sebe (`git push origin feature/amazing-feature`)
5. Vula i-Pull Request

### Ucwangciso loPhuhliso

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Ilayisensi

Le projekthi inelayisensi phantsi kwe-MIT License - jonga ifayile ye-[LICENSE](../../../LICENSE) ngeenkcukacha.

## 🔒 Ukhuseleko

Nceda ujonge u-[Mgaqo-nkqubo woKhuseleko](../../../SECURITY.md) wethu ngeenkcukacha zokuxela ubuthathaka bokhuseleko.

## 👨💻 Umbhali

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Imibulelo

- Iqela lophuhliso le-BIND9 ngeseva ye-DNS ebalaseleyo
- Uluntu lwe-Perl ngeemodyuli ze-SNMP ezomeleleyo
- Abaxhasi kunye nabasebenzisi bale projekthi

## 📚 Izibonelelo

- [Uxwebhu lwe-BIND9](https://bind9.readthedocs.io/)
- [Uxwebhu lwe-Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Irejista ye-SNMP OID](http://www.oid-info.com/)
- [I-Wiki yeProjekthi](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Isicwangciso seNdlela

- [ ] Inkxaso ye-SNMP v3 enongqiniso
- [ ] Enye indlela yokuthumela ngaphandle ye-Prometheus
- [ ] Ibhodi yeenkcukacha-manani esekelwe kwiwebhu
- [ ] Inkxaso yekhonteyina ye-Docker
- [ ] Iskripthi sokufaka esizenzekelayo
- [ ] Uqokelelo lweemetrikhi zokusebenza
- [ ] Ukugcinwa kwedatha yembali
- [ ] Uqwalaselo lwemida yezilumkiso

---

Ngolwazi oluthe vetshe, iingxelo zeempazamo, okanye izicelo zeempawu ezintsha, nceda undwendwele i-[GitHub repository](https://github.com/somethingwithproof/snmp-bind9-statistics).

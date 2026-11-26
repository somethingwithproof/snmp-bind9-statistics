# Izibalo ze-SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · **isiZulu**

</details>

Isixazululo sokuqapha esiphelele esisekelwe ku-Perl samaseva e-DNS e-BIND9 esiveza izibalo nge-SNMP ukuze kuhlanganiswe nezinhlelo zokuqapha inethiwekhi.

## 🚀 Ukubuka konke

Izibalo ze-SNMP BIND9 yithuluzi elivala igebe phakathi kwezibalo ezakhelwe ngaphakathi ze-BIND9 kanye nengqalasizinda yokuqapha esekelwe ku-SNMP. Liqoqa amamethrikhi anemininingwane eseva ye-DNS lisebenzisa i-`rndc stats` bese liwaveza nge-SNMP, okunika amandla ukuhlanganiswa okungenazihibe nezinkundla zokuqapha ezifana ne-Nagios, Zabbix, PRTG, nezinye.

## ✨ Izici

- 📊 **Ukuqoqwa Kwezibalo Okuphelele**
  - Izinhlobo zemibuzo (A, AAAA, MX, PTR, TXT, njll.)
  - Amakhodi ezimpendulo namazinga amaphutha
  - Izilinganiso zokushaya/ukugeja kwe-cache
  - Izibalo zokudluliswa kwama-zone
  - Amamethrikhi okusebenza kwe-resolver

- 🔄 **Ukuhlola Okuhlakaniphile**
  - Izikhawu zokuhlola ezingalungiselelwa
  - Indlela yokugcina ku-cache ukunciphisa umthwalo wesistimu
  - Amandla okuvuselela ngenkani
  - Ukuphathwa okuzenzakalelayo kokujikeleziswa kwefayela lezibalo

- 🛡️ **Ilungele Amabhizinisi**
  - Ukusekelwa kwe-SNMP v2c
  - Ukumepha kwe-OID ngokwezifiso
  - Ukuphathwa kwamaphutha okuphelele
  - Ukurekhoda okunemininingwane nge-Log4perl
  - Ukuphathwa kwamasignali ukuze kuvalwe ngokushelela

- 🔧 **Ukumiswa Okuguquguqukayo**
  - Amafayela okumiswa asekelwe ku-INI
  - Ukusekelwa kweziguquki zendawo yokusebenza
  - Ukweqa amapharamitha ngomugqa womyalo
  - Ukusekelwa kwezibonelo eziningi ze-BIND9

## 📋 Izidingo

### Izidingo Zesistimu

- **Isistimu Yokusebenza**: I-Linux/Unix ene-BIND9
- **Perl**: Inguqulo 5.10 noma ngaphezulu
- **BIND9**: Ene-`rndc` elungiselelwe futhi esebenzayo
- **Amalungelo**: Ukufinyelela kokufunda kufayela lezibalo le-BIND9

### Amamojula e-Perl

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

## 📦 Ukufakwa

### Kusuka ku-GitHub

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

## ⚙️ Ukumiswa

Dala ifayela lokumiswa elithi `config.ini`:

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

## 🚀 Ukusetshenziswa

### Ukusetshenziswa Okuyisisekelo

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

### Ukwenza kube okwendawo

Ukusetshenziswa kwe-CLI nokuhlolwa kwamalogi kusekela izilimi ezingu-45 (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ngaphandle kokuncika kwangaphandle kwe-CPAN nge-`SNMP::BIND9::I18n`. Ukuxazululwa kuhlonipha i-`--lang`, bese kuba yi-`LC_ALL`, `LC_MESSAGES`, kanye ne-`LANG`, kubuyele emuva ku-`en`. Ama-OID e-SNMP, amathokheni ephrothokholi, kanye namanani ezinombolo zamamethrikhi kuhlala kungashintshile kuzo zonke izilimi.

### Ukusebenza Njengesevisi

#### Isevisi ye-Systemd

Dala i-`/etc/systemd/system/bind9-snmp.service`:

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

Nika amandla bese uqala isevisi:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Iskripthi se-Init.d (Amasistimu Amadala)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Ukumepha kwe-SNMP OID

Ithuluzi lisebenzisa ukwakheka kwe-OID okulandelayo:

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

## 🧪 Ukuhlola

### Ukuhlolwa Kwezingxenye

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Ukuhlolwa Kokuhlanganiswa

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Ukuhlolwa Ngesandla

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Ukuhlanganiswa Nokuqapha

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Inzwa Engokwezifiso ye-PRTG

Sebenzisa inzwa ye-SNMP Custom Advanced ngama-OID ahlinzekiwe

## 🐛 Ukuxazulula Izinkinga

### Izinkinga Ezivamile

1. **Imvume Yaliwe Kufayela Lezibalo**

   ```bash
   # Hlola izimvume zefayela
   ls -l /var/cache/bind/named.stats

   # Lungisa izimvume
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Imbobo ye-SNMP Isivele Isetshenziswa**

   ```bash
   # Hlola ukuthi yini esebenzisa imbobo 161
   sudo netstat -tulpn | grep 161

   # Sebenzisa enye imbobo ekumisweni
   port = 1161
   ```

3. **Umyalo we-rndc Uyehluleka**

   ```bash
   # Hlola i-rndc ngesandla
   rndc stats

   # Hlola ukumiswa kwe-rndc
   rndc-confgen -a
   ```

4. **Azikho Izibalo Ezikhiqiziwe**

   ```bash
   # Nika amandla izibalo ku-named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Imodi Yokulungisa Amaphutha

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Izinto Okumele Zicatshangelwe Ngokusebenza

- **Isikhawu Sokuhlola**: Okuzenzakalelayo amasekhondi angu-300, lungisa ngokusekelwe ezidingweni zokuqapha
- **Ubude Besikhathi Se-Cache**: Izibalo zigcinwa ku-cache phakathi kokuhlola ukuze kuncishiswe umthwalo
- **I-File I/O**: Ifayela lezibalo lifundwa kuphela uma kudingeka
- **Ukusetshenziswa Kwememori**: Ngokuvamile ngaphansi kuka-20MB RSS
- **Ukusetshenziswa Kwe-CPU**: Kuncane kakhulu, kwenyuka kuphela ngesikhathi sokuqoqwa kwezibalo

## 🤝 Ukufaka Isandla

Iminikelo yamukelekile! Sicela uzizwe ukhululekile ukuthumela i-Pull Request.

1. Yenza i-fork yendawo yokugcina
2. Dala igatsha lakho lesici (`git checkout -b feature/amazing-feature`)
3. Faka izinguquko zakho ku-commit (`git commit -m 'feat: add amazing feature'`)
4. Phusha egatsheni (`git push origin feature/amazing-feature`)
5. Vula i-Pull Request

### Ukumiswa Kokuthuthukisa

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Ilayisensi

Le phrojekthi inelayisensi ngaphansi kwe-MIT License - bheka ifayela le-[LICENSE](../../../LICENSE) ngemininingwane.

## 🔒 Ukuphepha

Sicela ubheke [Inqubomgomo yethu Yokuphepha](../../../SECURITY.md) ngemininingwane yokubika ubungozi bokuphepha.

## 👨💻 Umbhali

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Ukubonga

- Ithimba lokuthuthukisa le-BIND9 ngeseva ye-DNS enhle kakhulu
- Umphakathi we-Perl ngamamojula aqinile e-SNMP
- Abafake isandla nabasebenzisi bale phrojekthi

## 📚 Izinsiza

- [Imibhalo ye-BIND9](https://bind9.readthedocs.io/)
- [Imibhalo ye-Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Irejista ye-SNMP OID](http://www.oid-info.com/)
- [I-Wiki Yephrojekthi](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Uhlelo Lwendlela

- [ ] Ukusekelwa kwe-SNMP v3 ngokuqinisekiswa kobuwena
- [ ] Enye indlela yokuthumela ku-Prometheus
- [ ] Ideshibhodi yezibalo yewebhu
- [ ] Ukusekelwa kwekhonteyina ye-Docker
- [ ] Iskripthi sokufaka esizenzakalelayo
- [ ] Ukuqoqwa kwamamethrikhi okusebenza
- [ ] Ukugcinwa kwedatha yomlando
- [ ] Ukumiswa kwemikhawulo yezaziso

---

Ngemininingwane eyengeziwe, imibiko yamaphutha, noma izicelo zezici, sicela uvakashele [indawo yokugcina ku-GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

# Tirakoobka SNMP BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · **Soomaali** · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Xal kormeer oo dhammaystiran oo ku dhisan Perl looguna talagalay adeegayaasha DNS ee BIND9 kaas oo tirakoobka ku bixiya SNMP si loogu xiro nidaamyada kormeerka shabakadda.

## 🚀 Dulmar

SNMP BIND9 Statistics waa qalab isku xira tirakoobka ku dhex jira BIND9 iyo kaabayaasha kormeerka ee ku salaysan SNMP. Wuxuu ururiyaa cabbirro faahfaahsan oo adeegaha DNS ah isaga oo adeegsanaya `rndc stats`, wuxuuna ku soo bandhigaa SNMP, taas oo fududaynaysa isdhexgalka tooska ah ee goobaha kormeerka sida Nagios, Zabbix, PRTG, iyo kuwo kale.

## ✨ Astaamaha

- 📊 **Ururin Tirakoob oo Dhammaystiran**
  - Noocyada weydiimaha (A, AAAA, MX, PTR, TXT, iwm.)
  - Koodhadhka jawaabta iyo heerarka ciladaha
  - Saamiga helidda iyo waayidda kaydka ku-meel-gaarka ah (cache hit/miss)
  - Tirakoobka wareejinta aagagga (zone transfer)
  - Cabbirrada waxqabadka xalliyaha (resolver)

- 🔄 **Hubin Caqli-gal ah**
  - Waqtiyo hubin oo la habayn karo
  - Hab kaydin ku-meel-gaar ah si loo yareeyo culayska nidaamka
  - Awoodda dib-u-cusboonaysiinta qasabka ah
  - Maareyn toos ah oo loogu talagalay wareejinta faylka tirakoobka

- 🛡️ **Diyaar u ah Hay'adaha Waaweyn**
  - Taageerada SNMP v2c
  - Khariidaynta OID ee gaarka ah
  - Maareyn cilado oo dhammaystiran
  - Diiwaangelin faahfaahsan oo leh Log4perl
  - Maareynta calaamadaha (signals) si nidaamku si nabadgelyo ah u damo

- 🔧 **Habayn Dabacsan**
  - Faylal habayn oo ku salaysan INI
  - Taageerada doorsoomayaasha deegaanka
  - Ka-sarreynta halbeegyada khadka taliska
  - Taageerada dhowr tusaale oo BIND9 ah

## 📋 Shuruudaha

### Shuruudaha Nidaamka

- **Nidaamka Hawlgalka**: Linux/Unix oo leh BIND9
- **Perl**: Nooca 5.10 ama ka sareeya
- **BIND9**: Iyada oo `rndc` la habeeyay oo shaqaynayo
- **Ogolaanshaha**: Awoodda akhrinta faylka tirakoobka ee BIND9

### Qaybaha Perl

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

## 📦 Rakibidda

### Ka soo qaadashada GitHub

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

### Isticmaalka Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Habaynta

Abuur faylka habaynta `config.ini`:

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

### Doorsoomayaasha Deegaanka

Waxaad ka sarreyn kartaa habaynta adiga oo isticmaalaya doorsoomayaasha deegaanka:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Isticmaalka

### Isticmaalka Aasaasiga ah

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

### Deegaamaynta Luqadaha

Isticmaalka CLI iyo baaritaannada diiwaanka waxay taageeraan 45 luqadood (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) iyada oo aan lahayn wax ku-tiirsanaan CPAN dibadda ah iyada oo loo marayo `SNMP::BIND9::I18n`. Go'aaminta luqaddu waxay tixgelisaa `--lang`, ka dibna `LC_ALL`, `LC_MESSAGES`, iyo `LANG`, iyada oo ugu dambayn ku laabata `en`. SNMP OID-yada, calaamadaha borotokoolka, iyo qiimayaasha tirada ee cabbirrada isma beddelaan dhammaan luqadaha.

### U-shaqaysiinta sida Adeeg

#### Adeegga Systemd

Abuur `/etc/systemd/system/bind9-snmp.service`:

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

Hawl-geli oo bilow adeegga:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Qoraalka Init.d (Nidaamyada Hore)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Khariidaynta SNMP OID

Qalabku wuxuu isticmaalaa qaab-dhismeedka OID ee soo socda:

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

### Waydiinta iyada oo loo marayo SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Tijaabinta

### Tijaabooyinka Qaybaha

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Tijaabooyinka Isdhexgalka

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Tijaabinta Gacanta

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Isdhexgalka Kormeerka

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Qaabka Zabbix

Soo deji qaabka Zabbix ee la bixiyay oo ka yimaada `contrib/zabbix/bind9-snmp-template.xml`

### Dareemaha Gaarka ah ee PRTG

Isticmaal dareemaha SNMP Custom Advanced adiga oo adeegsanaya OID-yada la bixiyay

## 🐛 Xallinta Ciladaha

### Dhibaatooyinka Caadiga ah

1. **Ogolaansho La Diiday oo ku saabsan Faylka Tirakoobka**

   ```bash
   # Hubi ogolaanshaha faylka
   ls -l /var/cache/bind/named.stats

   # Hagaaji ogolaanshaha
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Dekedda SNMP Hore Ayay u Shaqaynaysaa**

   ```bash
   # Hubi waxa isticmaalaya dekedda 161
   sudo netstat -tulpn | grep 161

   # Ku isticmaal deked beddel ah faylka habaynta
   port = 1161
   ```

3. **Taliska rndc Wuu Fashilmaa**

   ```bash
   # Gacanta ku tijaabi rndc
   rndc stats

   # Hubi habaynta rndc
   rndc-confgen -a
   ```

4. **Wax Tirakoob ah Lama Soo Saarin**

   ```bash
   # Ka daar tirakoobka gudaha named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Habka Cilad-saarista

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Tixgelinta Waxqabadka

- **Muddada Hubinta**: Caadi ahaan waa 300 ilbiriqsi, u hagaaji hadba baahiyaha kormeerka
- **Muddada Kaydka Ku-meel-gaarka ah**: Tirakoobka waxaa la kaydiyaa inta u dhaxaysa hubinnada si loo yareeyo culayska
- **Akhrinta/Qorista Faylka (File I/O)**: Faylka tirakoobka waxaa la akhriyaa oo keliya marka loo baahdo
- **Isticmaalka Xusuusta**: Sida caadiga ah way ka yar tahay 20MB RSS
- **Isticmaalka CPU**: Aad u yar, waxay kor u kacdaa oo keliya inta lagu jiro ururinta tirakoobka

## 🤝 Ka-qaybqaadashada

Ka-qaybqaadashada waa la soo dhawaynayaa! Fadlan xor u noqo inaad soo gudbiso Pull Request.

1. Samee fork kaydka
2. Abuur laanta astaantaada (`git checkout -b feature/amazing-feature`)
3. Kaydi isbeddelladaada (`git commit -m 'feat: add amazing feature'`)
4. U dir laanta (`git push origin feature/amazing-feature`)
5. Fur Pull Request

### Diyaarinta Deegaanka Horumarinta

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Shatiga

Mashruucan waxaa lagu shatiyeeyay Shatiga MIT - eeg faylka [LICENSE](../../../LICENSE) faahfaahin dheeraad ah.

## 🔒 Amniga

Fadlan eeg [Siyaasaddayada Amniga](../../../SECURITY.md) si aad u hesho faahfaahin ku saabsan soo sheegidda nuglaanshaha.

## 👨💻 Qoraaga

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Mahadcelinta

- Kooxda horumarinta BIND9 oo loogu mahadcelinayo adeegaha DNS ee heerka sare ah
- Bulshada Perl oo loogu mahadcelinayo qaybaha SNMP ee adag
- Ka-qaybqaatayaasha iyo isticmaalayaasha mashruucan

## 📚 Ilaha Macluumaadka

- [Dukumeentiga BIND9](https://bind9.readthedocs.io/)
- [Dukumeentiga Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Diiwaanka SNMP OID](http://www.oid-info.com/)
- [Wiki-ga Mashruuca](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Qorshaha Mustaqbalka

- [ ] Taageerada SNMP v3 oo leh xaqiijinta aqoonsiga
- [ ] Beddelka dhoofiyaha Prometheus
- [ ] Guddiga tirakoobka ee ku salaysan webka
- [ ] Taageerada weelka Docker
- [ ] Qoraalka rakibidda tooska ah
- [ ] Ururinta cabbirrada waxqabadka
- [ ] Kaydinta xogta taariikhiga ah
- [ ] Habaynta xadadka digniinta

---

Wixii macluumaad dheeraad ah, warbixinta ciladaha, ama codsiyada astaamaha, fadlan booqo [kaydka GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

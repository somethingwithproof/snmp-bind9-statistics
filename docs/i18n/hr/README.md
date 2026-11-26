# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (28 locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [Bosanski](../bs/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · **Hrvatski** · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Српски](../sr/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Cjelovito rješenje za nadzor BIND9 DNS poslužitelja temeljeno na Perlu koje izlaže statistiku putem SNMP-a radi integracije sa sustavima za nadzor mreže.

## 🚀 Pregled

SNMP BIND9 Statistics alat je koji povezuje ugrađenu statistiku BIND9 poslužitelja s infrastrukturom za nadzor temeljenom na SNMP-u. Prikuplja detaljne metrike DNS poslužitelja pomoću `rndc stats` i izlaže ih putem SNMP-a, omogućujući besprijekornu integraciju s platformama za nadzor kao što su Nagios, Zabbix, PRTG i druge.

## ✨ Značajke

- 📊 **Sveobuhvatno prikupljanje statistike**
  - Vrste upita (A, AAAA, MX, PTR, TXT itd.)
  - Kodovi odgovora i stope pogrešaka
  - Omjeri pogodaka i promašaja predmemorije
  - Statistika prijenosa zona
  - Metrike učinkovitosti razrješivača

- 🔄 **Inteligentno ispitivanje**
  - Prilagodljivi intervali ispitivanja
  - Mehanizam predmemoriranja za smanjenje opterećenja sustava
  - Mogućnost prisilnog osvježavanja
  - Automatsko upravljanje rotacijom statističke datoteke

- 🛡️ **Spremno za poslovna okruženja**
  - Podrška za SNMP v2c
  - Prilagođeno preslikavanje OID-ova
  - Sveobuhvatna obrada pogrešaka
  - Detaljno bilježenje zapisnika pomoću Log4perl
  - Obrada signala za sigurno isključivanje

- 🔧 **Prilagodljive postavke**
  - Konfiguracijske datoteke u INI formatu
  - Podrška za varijable okruženja
  - Nadjačavanje parametrima naredbenog retka
  - Podrška za više instanci BIND9 poslužitelja

## 📋 Preduvjeti

### Sustavni zahtjevi

- **Operacijski sustav**: Linux/Unix s BIND9
- **Perl**: Inačica 5.10 ili novija
- **BIND9**: S postavljenim i ispravnim alatom `rndc`
- **Ovlasti**: Pravo čitanja statističke datoteke BIND9 poslužitelja

### Perl moduli

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

## 📦 Instalacija

### S GitHuba

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

### Pomoću Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Postavke

Stvorite konfiguracijsku datoteku `config.ini`:

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

### Varijable okruženja

Postavke možete nadjačati pomoću varijabli okruženja:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Uporaba

### Osnovna uporaba

```bash
# Run with default configuration
./bin/snmp_bind9_stats.pl

# Specify custom configuration file
./bin/snmp_bind9_stats.pl --config=/etc/bind9-snmp/config.ini

# Display help
./bin/snmp_bind9_stats.pl --help

# Show version
./bin/snmp_bind9_stats.pl --version

# Display localized CLI help (supports 48 locales via --lang or LC_ALL/LC_MESSAGES/LANG)
./bin/snmp_bind9_stats.pl --lang=hr --help
```

### Lokalizacija

Pomoć naredbenog retka i dijagnostičke poruke zapisnika podržavaju 48 lokaliteta (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`, `bs`, `hr`, `sr`) bez vanjskih CPAN ovisnosti putem modula `SNMP::BIND9::I18n`. Razrješavanje poštuje `--lang`, zatim `LC_ALL`, `LC_MESSAGES` i `LANG`, uz povratak na `en`. SNMP OID-ovi, tokeni protokola i brojčane vrijednosti metrika ostaju nepromijenjeni u svim lokalitetima.

### Pokretanje kao servisa

#### Systemd servis

Stvorite datoteku `/etc/systemd/system/bind9-snmp.service`:

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

Omogućite i pokrenite servis:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d skripta (stariji sustavi)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Preslikavanje SNMP OID-ova

Alat koristi sljedeću strukturu OID-ova:

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

### Upiti putem SNMP-a

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Testiranje

### Jedinični testovi

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integracijski testovi

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Ručno testiranje

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Integracija sa sustavima za nadzor

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix predložak

Uvezite priloženi Zabbix predložak iz `contrib/zabbix/bind9-snmp-template.xml`

### PRTG prilagođeni senzor

Upotrijebite senzor SNMP Custom Advanced s priloženim OID-ovima

## 🐛 Otklanjanje poteškoća

### Uobičajeni problemi

1. **Odbijen pristup statističkoj datoteci**

   ```bash
   # Check file permissions
   ls -l /var/cache/bind/named.stats

   # Fix permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP priključak već je u uporabi**

   ```bash
   # Check what's using port 161
   sudo netstat -tulpn | grep 161

   # Use alternative port in config
   port = 1161
   ```

3. **Neuspjelo izvršavanje naredbe rndc**

   ```bash
   # Test rndc manually
   rndc stats

   # Check rndc configuration
   rndc-confgen -a
   ```

4. **Statistika se ne generira**

   ```bash
   # Enable statistics in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Način otklanjanja pogrešaka

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Smjernice za učinkovitost

- **Interval ispitivanja**: Zadano 300 sekundi, prilagodite prema potrebama nadzora
- **Trajanje predmemorije**: Statistika se predmemorira između ispitivanja radi smanjenja opterećenja
- **U/I rad s datotekama**: Statistička datoteka čita se samo po potrebi
- **Potrošnja memorije**: Uobičajeno manje od 20MB RSS
- **Opterećenje procesora**: Minimalno, kratak porast samo tijekom prikupljanja statistike

## 🤝 Doprinos razvoju

Doprinosi su dobrodošli! Slobodno pošaljite Pull Request.

1. Napravite fork repozitorija
2. Stvorite granu za novu značajku (`git checkout -b feature/amazing-feature`)
3. Potvrdite promjene (`git commit -m 'feat: add amazing feature'`)
4. Pošaljite granu na poslužitelj (`git push origin feature/amazing-feature`)
5. Otvorite Pull Request

### Postavljanje razvojnog okruženja

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licencija

Ovaj projekt licenciran je pod MIT licencijom - pogledajte datoteku [LICENSE](../../../LICENSE) za pojedinosti.

## 🔒 Sigurnost

Molimo pročitajte naša [Sigurnosna pravila](../../../SECURITY.md) za pojedinosti o prijavljivanju ranjivosti.

## 👨‍💻 Autor

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Zahvale

- Razvojnom timu BIND9 za izvrstan DNS poslužitelj
- Perl zajednici za pouzdane SNMP module
- Suradnicima i korisnicima ovog projekta

## 📚 Resursi

- [BIND9 dokumentacija](https://bind9.readthedocs.io/)
- [Net::SNMP dokumentacija](https://metacpan.org/pod/Net::SNMP)
- [Registar SNMP OID-ova](http://www.oid-info.com/)
- [Wiki projekta](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Plan razvoja

- [ ] Podrška za SNMP v3 s provjerom autentičnosti
- [ ] Alternativni izvoznik za Prometheus
- [ ] Mrežna nadzorna ploča za statistiku
- [ ] Podrška za Docker spremnike
- [ ] Automatizirana instalacijska skripta
- [ ] Prikupljanje metrika učinkovitosti
- [ ] Pohrana povijesnih podataka
- [ ] Postavke pragova upozorenja

---

Za više pojedinosti, izvješća o pogreškama ili zahtjeve za novim značajkama posjetite [GitHub repozitorij](https://github.com/somethingwithproof/snmp-bind9-statistics).

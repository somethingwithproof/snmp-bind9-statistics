# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · **Polski** · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Kompleksowe rozwiązanie monitorujące w języku Perl dla serwerów DNS BIND9, udostępniające statystyki przez SNMP w celu integracji z systemami monitorowania sieci.

## 🚀 Przegląd

SNMP BIND9 Statistics to narzędzie łączące wbudowane statystyki BIND9 z infrastrukturą monitoringu opartą na SNMP. Zbiera szczegółowe metryki serwera DNS za pomocą `rndc stats` i udostępnia je przez SNMP, umożliwiając płynną integrację z platformami monitorującymi takimi jak Nagios, Zabbix, PRTG i innymi.

## ✨ Funkcje

- 📊 **Kompleksowe zbieranie statystyk**
  - Typy zapytań (A, AAAA, MX, PTR, TXT itd.)
  - Kody odpowiedzi i wskaźniki błędów
  - Współczynniki trafień i chybień pamięci podręcznej
  - Statystyki transferu stref
  - Metryki wydajności resolvera

- 🔄 **Inteligentne odpytywanie**
  - Konfigurowalne interwały odpytywania
  - Mechanizm buforowania zmniejszający obciążenie systemu
  - Możliwość wymuszenia odświeżenia
  - Automatyczna obsługa rotacji plików statystyk

- 🛡️ **Gotowość do zastosowań produkcyjnych**
  - Obsługa SNMP v2c
  - Niestandardowe mapowanie OID
  - Kompleksowa obsługa błędów
  - Szczegółowe logowanie z wykorzystaniem Log4perl
  - Obsługa sygnałów w celu bezpiecznego zamykania

- 🔧 **Elastyczna konfiguracja**
  - Pliki konfiguracyjne w formacie INI
  - Obsługa zmiennych środowiskowych
  - Nadpisywanie parametrów z wiersza poleceń
  - Obsługa wielu instancji BIND9

## 📋 Wymagania

### Wymagania systemowe

- **System operacyjny**: Linux/Unix z BIND9
- **Perl**: Wersja 5.10 lub nowsza
- **BIND9**: Ze skonfigurowanym i działającym `rndc`
- **Uprawnienia**: Dostęp do odczytu pliku statystyk BIND9

### Moduły Perla

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

## 📦 Instalacja

### Z GitHuba

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

### Za pomocą Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Konfiguracja

Utwórz plik konfiguracyjny `config.ini`:

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

### Zmienne środowiskowe

Konfigurację można nadpisać za pomocą zmiennych środowiskowych:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Użycie

### Podstawowe użycie

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

### Lokalizacja

Komunikaty użycia CLI oraz diagnostyka logów obsługują 45 ustawień regionalnych (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) bez żadnych zewnętrznych zależności CPAN poprzez `SNMP::BIND9::I18n`. Rozpoznawanie uwzględnia kolejno `--lang`, następnie `LC_ALL`, `LC_MESSAGES` oraz `LANG`, z powrotem do `en`. Identyfikatory SNMP OID, tokeny protokołów oraz numeryczne wartości metryk pozostają niezmienione we wszystkich lokalizacjach.

### Uruchamianie jako usługa

#### Usługa Systemd

Utwórz plik `/etc/systemd/system/bind9-snmp.service`:

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

Włącz i uruchom usługę:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Skrypt Init.d (starsze systemy)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Mapowanie OID SNMP

Narzędzie wykorzystuje następującą strukturę OID:

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

### Odpytywanie przez SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Testowanie

### Testy jednostkowe

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Testy integracyjne

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Testowanie ręczne

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Integracja z monitoringiem

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Szablon Zabbix

Zaimportuj dostarczony szablon Zabbix z pliku `contrib/zabbix/bind9-snmp-template.xml`

### Niestandardowy czujnik PRTG

Użyj czujnika SNMP Custom Advanced z dostarczonymi OID

## 🐛 Rozwiązywanie problemów

### Częste problemy

1. **Brak uprawnień do pliku statystyk**

   ```bash
   # Sprawdź uprawnienia do pliku
   ls -l /var/cache/bind/named.stats

   # Napraw uprawnienia
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Port SNMP jest już używany**

   ```bash
   # Sprawdź, co używa portu 161
   sudo netstat -tulpn | grep 161

   # Użyj alternatywnego portu w konfiguracji
   port = 1161
   ```

3. **Polecenie rndc kończy się niepowodzeniem**

   ```bash
   # Przetestuj rndc ręcznie
   rndc stats

   # Sprawdź konfigurację rndc
   rndc-confgen -a
   ```

4. **Statystyki nie są generowane**

   ```bash
   # Włącz statystyki w named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Tryb debugowania

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Kwestie wydajnościowe

- **Interwał odpytywania**: Domyślnie 300 sekund, dostosuj do potrzeb monitoringu
- **Czas buforowania**: Statystyki są buforowane między odpytaniami w celu zmniejszenia obciążenia
- **Operacje I/O na plikach**: Plik statystyk jest odczytywany tylko wtedy, gdy jest to potrzebne
- **Zużycie pamięci**: Zwykle poniżej 20MB RSS
- **Zużycie CPU**: Minimalne, krótkie skoki wyłącznie podczas zbierania statystyk

## 🤝 Współtworzenie

Wszelki wkład jest mile widziany! Zachęcamy do przesyłania Pull Requestów.

1. Sforkuj repozytorium
2. Utwórz swoją gałąź funkcji (`git checkout -b feature/amazing-feature`)
3. Zatwierdź zmiany (`git commit -m 'feat: add amazing feature'`)
4. Wypchnij gałąź (`git push origin feature/amazing-feature`)
5. Otwórz Pull Request

### Konfiguracja środowiska deweloperskiego

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licencja

Ten projekt jest udostępniany na licencji MIT - szczegóły w pliku [LICENSE](../../../LICENSE).

## 🔒 Bezpieczeństwo

Zobacz naszą [Politykę bezpieczeństwa](../../../SECURITY.md), aby uzyskać szczegółowe informacje na temat zgłaszania podatności.

## 👨💻 Autor

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Podziękowania

- Zespołowi deweloperów BIND9 za znakomity serwer DNS
- Społeczności Perla za niezawodne moduły SNMP
- Współtwórcom i użytkownikom tego projektu

## 📚 Zasoby

- [Dokumentacja BIND9](https://bind9.readthedocs.io/)
- [Dokumentacja Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Rejestr OID SNMP](http://www.oid-info.com/)
- [Wiki projektu](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Plan rozwoju

- [ ] Obsługa SNMP v3 z uwierzytelnianiem
- [ ] Alternatywa w postaci eksportera Prometheus
- [ ] Panel statystyk oparty na przeglądarce
- [ ] Obsługa kontenerów Docker
- [ ] Automatyczny skrypt instalacyjny
- [ ] Zbieranie metryk wydajnościowych
- [ ] Przechowywanie danych historycznych
- [ ] Konfiguracja progów alertów

---

Więcej informacji, zgłaszanie błędów oraz propozycje funkcji znajdziesz w [repozytorium GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · **Deutsch** · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Eine umfassende Perl-basierte Monitoring-Lösung für BIND9-DNS-Server, die Statistiken über SNMP zur Integration in Netzwerk-Monitoring-Systeme bereitstellt.

## 🚀 Überblick

SNMP BIND9 Statistics ist ein Werkzeug, das die Lücke zwischen den integrierten Statistiken von BIND9 und einer SNMP-basierten Monitoring-Infrastruktur schließt. Es erfasst detaillierte DNS-Server-Metriken mithilfe von `rndc stats` und stellt sie über SNMP bereit, was eine nahtlose Integration in Monitoring-Plattformen wie Nagios, Zabbix, PRTG und andere ermöglicht.

## ✨ Funktionen

- 📊 **Umfangreiche Statistikerfassung**
  - Abfragetypen (A, AAAA, MX, PTR, TXT usw.)
  - Antwortcodes und Fehlerraten
  - Cache-Treffer-/Fehlerraten
  - Zonentransfer-Statistiken
  - Resolver-Leistungsmetriken

- 🔄 **Intelligentes Polling**
  - Konfigurierbare Abfrageintervalle
  - Caching-Mechanismus zur Reduzierung der Systemlast
  - Möglichkeit zur erzwungenen Aktualisierung
  - Automatische Behandlung der Rotation von Statistikdateien

- 🛡️ **Enterprise-tauglich**
  - SNMP-v2c-Unterstützung
  - Benutzerdefiniertes OID-Mapping
  - Umfassende Fehlerbehandlung
  - Detaillierte Protokollierung mit Log4perl
  - Signalbehandlung für einen kontrollierten Shutdown

- 🔧 **Flexible Konfiguration**
  - INI-basierte Konfigurationsdateien
  - Unterstützung für Umgebungsvariablen
  - Überschreiben durch Befehlszeilenparameter
  - Unterstützung für mehrere BIND9-Instanzen

## 📋 Voraussetzungen

### Systemvoraussetzungen

- **Betriebssystem**: Linux/Unix mit BIND9
- **Perl**: Version 5.10 oder höher
- **BIND9**: Mit konfiguriertem und betriebsbereitem `rndc`
- **Berechtigungen**: Lesezugriff auf die BIND9-Statistikdatei

### Perl-Module

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

## 📦 Installation

### Von GitHub

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

### Mit Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Konfiguration

Erstellen Sie eine Konfigurationsdatei `config.ini`:

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

### Umgebungsvariablen

Sie können die Konfiguration mithilfe von Umgebungsvariablen überschreiben:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Verwendung

### Grundlegende Verwendung

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

### Lokalisierung

CLI-Hilfe und Protokolldiagnosen unterstützen 45 Gebietsschemata (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) ohne externe CPAN-Abhängigkeiten über `SNMP::BIND9::I18n`. Die Auflösung berücksichtigt `--lang`, dann `LC_ALL`, `LC_MESSAGES` und `LANG`, mit Fallback auf `en`. SNMP-OIDs, Protokoll-Tokens und numerische Metrikwerte bleiben in allen Gebietsschemata unverändert.

### Betrieb als Dienst

#### Systemd-Dienst

Erstellen Sie `/etc/systemd/system/bind9-snmp.service`:

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

Aktivieren und starten Sie den Dienst:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d-Skript (ältere Systeme)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP-OID-Mapping

Das Werkzeug verwendet folgende OID-Struktur:

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

### Abfrage über SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Tests

### Unit-Tests

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Integrationstests

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Manuelle Tests

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Monitoring-Integration

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix-Vorlage

Importieren Sie die bereitgestellte Zabbix-Vorlage aus `contrib/zabbix/bind9-snmp-template.xml`

### PRTG Custom Sensor

Verwenden Sie den Sensor „SNMP Custom Advanced“ mit den bereitgestellten OIDs

## 🐛 Fehlerbehebung

### Häufige Probleme

1. **Zugriff auf die Statistikdatei verweigert**

   ```bash
   # Dateiberechtigungen prüfen
   ls -l /var/cache/bind/named.stats

   # Berechtigungen korrigieren
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP-Port bereits belegt**

   ```bash
   # Prüfen, was Port 161 verwendet
   sudo netstat -tulpn | grep 161

   # Alternativen Port in der Konfiguration verwenden
   port = 1161
   ```

3. **rndc-Befehl schlägt fehl**

   ```bash
   # rndc manuell testen
   rndc stats

   # rndc-Konfiguration prüfen
   rndc-confgen -a
   ```

4. **Keine Statistiken generiert**

   ```bash
   # Statistiken in named.conf aktivieren
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Debug-Modus

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Hinweise zur Leistung

- **Abfrageintervall**: Standardmäßig 300 Sekunden, je nach Monitoring-Anforderungen anpassen
- **Cache-Dauer**: Statistiken werden zwischen den Abfragen zwischengespeichert, um die Last zu reduzieren
- **Datei-I/O**: Die Statistikdatei wird nur bei Bedarf gelesen
- **Speicherverbrauch**: Typischerweise unter 20 MB RSS
- **CPU-Auslastung**: Minimal, kurze Spitzen nur während der Statistikerfassung

## 🤝 Mitwirken

Beiträge sind willkommen! Reichen Sie gerne einen Pull Request ein.

1. Forken Sie das Repository
2. Erstellen Sie Ihren Feature-Branch (`git checkout -b feature/amazing-feature`)
3. Committen Sie Ihre Änderungen (`git commit -m 'feat: add amazing feature'`)
4. Pushen Sie den Branch (`git push origin feature/amazing-feature`)
5. Öffnen Sie einen Pull Request

### Entwicklungseinrichtung

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Lizenz

Dieses Projekt ist unter der MIT-Lizenz lizenziert - siehe die Datei [LICENSE](../../../LICENSE) für Details.

## 🔒 Sicherheit

Details zum Melden von Sicherheitslücken finden Sie in unserer [Sicherheitsrichtlinie](../../../SECURITY.md).

## 👨💻 Autor

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Danksagungen

- Das BIND9-Entwicklungsteam für den hervorragenden DNS-Server
- Die Perl-Community für die robusten SNMP-Module
- Alle Mitwirkenden und Nutzer dieses Projekts

## 📚 Ressourcen

- [BIND9-Dokumentation](https://bind9.readthedocs.io/)
- [Net::SNMP-Dokumentation](https://metacpan.org/pod/Net::SNMP)
- [SNMP-OID-Verzeichnis](http://www.oid-info.com/)
- [Projekt-Wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Roadmap

- [ ] SNMP-v3-Unterstützung mit Authentifizierung
- [ ] Prometheus-Exporter als Alternative
- [ ] Web-basiertes Statistik-Dashboard
- [ ] Docker-Container-Unterstützung
- [ ] Automatisiertes Installationsskript
- [ ] Erfassung von Leistungsmetriken
- [ ] Historische Datenspeicherung
- [ ] Konfiguration von Alarm-Schwellenwerten

---

Weitere Informationen, Fehlerberichte oder Funktionswünsche finden Sie im [GitHub-Repository](https://github.com/somethingwithproof/snmp-bind9-statistics).

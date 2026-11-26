# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · **Français (Maroc)** · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Une solution complète de supervision basée sur Perl pour les serveurs DNS BIND9, qui expose les statistiques via SNMP afin de s'intégrer aux systèmes de supervision réseau.

## 🚀 Présentation

SNMP BIND9 Statistics est un outil qui fait le pont entre les statistiques intégrées de BIND9 et les infrastructures de supervision basées sur SNMP. Il collecte des métriques détaillées du serveur DNS à l'aide de `rndc stats` et les expose via SNMP, permettant une intégration fluide avec des plateformes de supervision telles que Nagios, Zabbix, PRTG et d'autres.

## ✨ Fonctionnalités

- 📊 **Collecte complète des statistiques**
  - Types de requêtes (A, AAAA, MX, PTR, TXT, etc.)
  - Codes de réponse et taux d'erreur
  - Ratios succès/échec du cache (hit/miss)
  - Statistiques de transfert de zones
  - Métriques de performance du résolveur

- 🔄 **Interrogation intelligente (polling)**
  - Intervalles d'interrogation configurables
  - Mécanisme de mise en cache pour réduire la charge système
  - Possibilité de forcer le rafraîchissement
  - Gestion automatique de la rotation du fichier de statistiques

- 🛡️ **Prêt pour la production**
  - Prise en charge de SNMP v2c
  - Correspondance (mapping) personnalisée des OID
  - Gestion complète des erreurs
  - Journalisation détaillée avec Log4perl
  - Gestion des signaux pour un arrêt propre

- 🔧 **Configuration flexible**
  - Fichiers de configuration au format INI
  - Prise en charge des variables d'environnement
  - Surcharge par paramètres en ligne de commande
  - Prise en charge de plusieurs instances BIND9

## 📋 Prérequis

### Prérequis système

- **Système d'exploitation** : Linux/Unix avec BIND9
- **Perl** : Version 5.10 ou supérieure
- **BIND9** : Avec `rndc` configuré et opérationnel
- **Privilèges** : Accès en lecture au fichier de statistiques BIND9

### Modules Perl

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

### Depuis GitHub

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

### Avec Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Configuration

Créez un fichier de configuration `config.ini` :

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

### Variables d'environnement

Vous pouvez surcharger la configuration à l'aide de variables d'environnement :

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Utilisation

### Utilisation de base

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

### Localisation

L'aide d'utilisation CLI et les diagnostics de journalisation prennent en charge 45 locales (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) sans aucune dépendance CPAN externe via `SNMP::BIND9::I18n`. La résolution respecte `--lang`, puis `LC_ALL`, `LC_MESSAGES` et `LANG`, avec repli sur `en`. Les OID SNMP, les jetons de protocole et les valeurs numériques des métriques restent inchangés dans toutes les locales.

### Exécution en tant que service

#### Service Systemd

Créez `/etc/systemd/system/bind9-snmp.service` :

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

Activez et démarrez le service :

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Script Init.d (systèmes anciens)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Correspondance des OID SNMP

L'outil utilise la structure d'OID suivante :

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

### Interrogation via SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Tests

### Tests unitaires

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Tests d'intégration

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Tests manuels

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Intégration avec les outils de supervision

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Modèle Zabbix

Importez le modèle Zabbix fourni depuis `contrib/zabbix/bind9-snmp-template.xml`

### Capteur personnalisé PRTG

Utilisez le capteur SNMP Custom Advanced avec les OID fournis

## 🐛 Dépannage

### Problèmes courants

1. **Permission refusée sur le fichier de statistiques**

   ```bash
   # Vérifier les permissions du fichier
   ls -l /var/cache/bind/named.stats

   # Corriger les permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Port SNMP déjà utilisé**

   ```bash
   # Vérifier quel processus utilise le port 161
   sudo netstat -tulpn | grep 161

   # Utiliser un port alternatif dans la configuration
   port = 1161
   ```

3. **Échec de la commande rndc**

   ```bash
   # Tester rndc manuellement
   rndc stats

   # Vérifier la configuration de rndc
   rndc-confgen -a
   ```

4. **Aucune statistique générée**

   ```bash
   # Activer les statistiques dans named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Mode débogage

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Considérations de performance

- **Intervalle d'interrogation** : 300 secondes par défaut, à ajuster selon vos besoins de supervision
- **Durée du cache** : Les statistiques sont mises en cache entre les interrogations pour réduire la charge
- **Entrées/sorties fichier** : Le fichier de statistiques n'est lu qu'en cas de besoin
- **Utilisation mémoire** : Généralement inférieure à 20 Mo RSS
- **Utilisation CPU** : Minimale, avec un bref pic uniquement lors de la collecte des statistiques

## 🤝 Contribuer

Les contributions sont les bienvenues ! N'hésitez pas à soumettre une Pull Request.

1. Forkez le dépôt
2. Créez votre branche de fonctionnalité (`git checkout -b feature/amazing-feature`)
3. Validez vos modifications (`git commit -m 'feat: add amazing feature'`)
4. Poussez la branche (`git push origin feature/amazing-feature`)
5. Ouvrez une Pull Request

### Configuration de l'environnement de développement

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licence

Ce projet est distribué sous licence MIT - consultez le fichier [LICENSE](../../../LICENSE) pour plus de détails.

## 🔒 Sécurité

Veuillez consulter notre [Politique de sécurité](../../../SECURITY.md) pour savoir comment signaler des vulnérabilités.

## 👨💻 Auteur

**Thomas Vincent**

- GitHub : [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Remerciements

- L'équipe de développement de BIND9 pour cet excellent serveur DNS
- La communauté Perl pour la robustesse des modules SNMP
- Les contributeurs et utilisateurs de ce projet

## 📚 Ressources

- [Documentation BIND9](https://bind9.readthedocs.io/)
- [Documentation Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Registre des OID SNMP](http://www.oid-info.com/)
- [Wiki du projet](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Feuille de route

- [ ] Prise en charge de SNMP v3 avec authentification
- [ ] Alternative sous forme d'exportateur Prometheus
- [ ] Tableau de bord web pour les statistiques
- [ ] Prise en charge des conteneurs Docker
- [ ] Script d'installation automatisé
- [ ] Collecte de métriques de performance
- [ ] Stockage de l'historique des données
- [ ] Configuration de seuils d'alerte

---

Pour plus d'informations, signaler un bug ou proposer une fonctionnalité, veuillez consulter le [dépôt GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

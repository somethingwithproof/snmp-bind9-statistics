# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (28 locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [Bosanski](../bs/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Hrvatski](../hr/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · **Српски** · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Свеобухватно решење за надзор BIND9 DNS сервера засновано на Перлу, које излаже статистику путем SNMP-а ради интеграције са системима за надзор мреже.

## 🚀 Преглед

SNMP BIND9 Statistics је алат који повезује уграђену статистику BIND9 сервера са инфраструктуром за надзор заснованом на SNMP-у. Прикупља детаљне метрике DNS сервера помоћу `rndc stats` и излаже их путем SNMP-а, омогућавајући беспрекорну интеграцију са платформама за надзор као што су Nagios, Zabbix, PRTG и друге.

## ✨ Могућности

- 📊 **Свеобухватно прикупљање статистике**
  - Типови упита (A, AAAA, MX, PTR, TXT итд.)
  - Кодови одговора и стопе грешака
  - Односи погодака и промашаја кеша
  - Статистика преноса зона
  - Метрике перформанси разрешавача

- 🔄 **Паметно анкетирање**
  - Подесиви интервали анкетирања
  - Механизам кеширања за смањење оптерећења система
  - Могућност принудног освежавања
  - Аутоматско руковање ротацијом датотеке статистике

- 🛡️ **Спремно за пословну примену**
  - Подршка за SNMP v2c
  - Прилагођено OID мапирање
  - Свеобухватна обрада грешака
  - Детаљно бележење помоћу Log4perl
  - Руковање сигналима за уредно гашење

- 🔧 **Флексибилна подешавања**
  - Конфигурационе датотеке у INI формату
  - Подршка за променљиве окружења
  - Надјачавање параметрима командне линије
  - Подршка за више инстанци BIND9 сервера

## 📋 Захтеви

### Системски захтеви

- **Оперативни систем**: Linux/Unix са BIND9
- **Perl**: Верзија 5.10 или новија
- **BIND9**: Са подешеним и исправним алатом `rndc`
- **Дозволе**: Право читања датотеке статистике BIND9 сервера

### Perl модули

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

## 📦 Инсталација

### Са GitHub-а

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

### Помоћу Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Подешавања

Креирајте конфигурациону датотеку `config.ini`:

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

### Променљиве окружења

Подешавања можете надјачати помоћу променљивих окружења:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Употреба

### Основна употреба

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
./bin/snmp_bind9_stats.pl --lang=sr --help
```

### Локализација

Помоћ у командној линији и дијагностичке поруке дневника подржавају 48 локалитета (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`, `bs`, `hr`, `sr`) без икаквих спољних CPAN зависности путем `SNMP::BIND9::I18n`. Одређивање језика поштује `--lang`, затим `LC_ALL`, `LC_MESSAGES` и `LANG`, уз повратак на `en`. SNMP OID вредности, токени протокола и нумеричке метрике остају непромењени у свим локалитетима.

### Покретање као сервиса

#### Systemd сервис

Креирајте `/etc/systemd/system/bind9-snmp.service`:

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

Омогућите и покрените сервис:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d скрипта (старији системи)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID мапирање

Алат користи следећу OID структуру:

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

### Упити путем SNMP-а

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Тестирање

### Јединични тестови

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Интеграциони тестови

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Ручно тестирање

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Интеграција са системима за надзор

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix шаблон

Увезите приложени Zabbix шаблон из `contrib/zabbix/bind9-snmp-template.xml`

### PRTG прилагођени сензор

Користите сензор SNMP Custom Advanced са приложеним OID-овима

## 🐛 Решавање проблема

### Уобичајени проблеми

1. **Одбијен приступ датотеци статистике**

   ```bash
   # Check file permissions
   ls -l /var/cache/bind/named.stats

   # Fix permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP порт је већ у употреби**

   ```bash
   # Check what's using port 161
   sudo netstat -tulpn | grep 161

   # Use alternative port in config
   port = 1161
   ```

3. **Команда rndc не успева**

   ```bash
   # Test rndc manually
   rndc stats

   # Check rndc configuration
   rndc-confgen -a
   ```

4. **Статистика се не генерише**

   ```bash
   # Enable statistics in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Режим отклањања грешака

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Разматрања о перформансама

- **Интервал анкетирања**: Подразумевано 300 секунди, прилагодите према потребама надзора
- **Трајање кеша**: Статистика се кешира између анкетирања ради смањења оптерећења
- **У/И рад са датотекама**: Датотека статистике се чита само када је потребно
- **Потрошња меморије**: Уобичајено испод 20MB RSS
- **Оптерећење процесора**: Минимално, краткотрајан раст само током прикупљања статистике

## 🤝 Допринос развоју

Доприноси су добродошли! Слободно пошаљите Pull Request.

1. Направите форк репозиторијума
2. Креирајте грану за нову функционалност (`git checkout -b feature/amazing-feature`)
3. Потврдите измене (`git commit -m 'feat: add amazing feature'`)
4. Пошаљите грану на сервер (`git push origin feature/amazing-feature`)
5. Отворите Pull Request

### Подешавање развојног окружења

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Лиценца

Овај пројекат је лиценциран под MIT лиценцом - погледајте датотеку [LICENSE](../../../LICENSE) за детаље.

## 🔒 Безбедност

Молимо погледајте нашу [Политику безбедности](../../../SECURITY.md) за детаље о пријављивању рањивости.

## 👨‍💻 Аутор

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Захвале

- Развојном тиму BIND9 за одличан DNS сервер
- Perl заједници за поуздане SNMP модуле
- Сарадницима и корисницима овог пројекта

## 📚 Ресурси

- [BIND9 документација](https://bind9.readthedocs.io/)
- [Net::SNMP документација](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID регистар](http://www.oid-info.com/)
- [Вики пројекта](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ План развоја

- [ ] Подршка за SNMP v3 са аутентификацијом
- [ ] Алтернативни Prometheus извозник
- [ ] Веб контролна табла за статистику
- [ ] Подршка за Docker контејнере
- [ ] Аутоматизована инсталациона скрипта
- [ ] Прикупљање метрика перформанси
- [ ] Чување историјских података
- [ ] Подешавање прагова упозорења

---

За више информација, извештаје о грешкама или захтеве за новим могућностима, посетите [GitHub репозиторијум](https://github.com/somethingwithproof/snmp-bind9-statistics).

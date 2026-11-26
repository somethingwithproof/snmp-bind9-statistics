# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · **Українська** · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Комплексне рішення моніторингу на Perl для DNS-серверів BIND9, яке надає статистику через SNMP для інтеграції із системами моніторингу мережі.

## 🚀 Огляд

SNMP BIND9 Statistics - це інструмент, що поєднує вбудовану статистику BIND9 з інфраструктурою моніторингу на базі SNMP. Він збирає докладні метрики DNS-сервера за допомогою `rndc stats` і публікує їх через SNMP, забезпечуючи безперешкодну інтеграцію з такими платформами моніторингу, як Nagios, Zabbix, PRTG та іншими.

## ✨ Можливості

- 📊 **Комплексний збір статистики**
  - Типи запитів (A, AAAA, MX, PTR, TXT тощо)
  - Коди відповідей і частота помилок
  - Співвідношення влучань і промахів кешу
  - Статистика передавання зон
  - Метрики продуктивності резолвера

- 🔄 **Інтелектуальне опитування**
  - Налаштовувані інтервали опитування
  - Механізм кешування для зменшення навантаження на систему
  - Можливість примусового оновлення
  - Автоматична обробка ротації файлу статистики

- 🛡️ **Готовність до корпоративного використання**
  - Підтримка SNMP v2c
  - Налаштовуване зіставлення OID
  - Комплексна обробка помилок
  - Докладне журналювання за допомогою Log4perl
  - Обробка сигналів для коректного завершення роботи

- 🔧 **Гнучка конфігурація**
  - Конфігураційні файли у форматі INI
  - Підтримка змінних середовища
  - Перевизначення параметрами командного рядка
  - Підтримка кількох екземплярів BIND9

## 📋 Вимоги

### Системні вимоги

- **Операційна система**: Linux/Unix із BIND9
- **Perl**: версія 5.10 або вище
- **BIND9**: із налаштованим та працездатним `rndc`
- **Привілеї**: доступ на читання до файлу статистики BIND9

### Модулі Perl

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

## 📦 Встановлення

### Із GitHub

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

### За допомогою Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Налаштування

Створіть конфігураційний файл `config.ini`:

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

## 🚀 Використання

### Базове використання

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

### Локалізація

Довідка CLI та діагностичні повідомлення журналу підтримують 45 локалей (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) без жодних зовнішніх залежностей CPAN через `SNMP::BIND9::I18n`. Визначення локалі враховує `--lang`, далі `LC_ALL`, `LC_MESSAGES` і `LANG`, із резервним переходом до `en`. SNMP OID, токени протоколу та числові значення метрик залишаються незмінними в усіх локалях.

### Запуск як сервісу

#### Сервіс Systemd

Створіть `/etc/systemd/system/bind9-snmp.service`:

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

Увімкніть і запустіть сервіс:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Скрипт Init.d (застарілі системи)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Зіставлення SNMP OID

Інструмент використовує таку структуру OID:

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

### Запити через SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Тестування

### Модульні тести

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Інтеграційні тести

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Ручне тестування

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 Інтеграція із системами моніторингу

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Власний сенсор PRTG

Використовуйте сенсор SNMP Custom Advanced із наданими OID

## 🐛 Усунення несправностей

### Поширені проблеми

1. **Відмова в доступі до файлу статистики**

   ```bash
   # Check file permissions
   ls -l /var/cache/bind/named.stats

   # Fix permissions
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Порт SNMP уже використовується**

   ```bash
   # Check what's using port 161
   sudo netstat -tulpn | grep 161

   # Use alternative port in config
   port = 1161
   ```

3. **Помилка виконання команди rndc**

   ```bash
   # Test rndc manually
   rndc stats

   # Check rndc configuration
   rndc-confgen -a
   ```

4. **Статистика не генерується**

   ```bash
   # Enable statistics in named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Режим налагодження

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Міркування щодо продуктивності

- **Інтервал опитування**: типово 300 секунд, налаштовуйте відповідно до потреб моніторингу
- **Тривалість кешування**: статистика кешується між опитуваннями для зменшення навантаження
- **Файловий ввід-вивід**: файл статистики читається лише за потреби
- **Споживання пам'яті**: зазвичай менше 20MB RSS
- **Навантаження на CPU**: мінімальне, зростає лише під час збору статистики

## 🤝 Участь у розробці

Внески вітаються! Будь ласка, надсилайте Pull Request.

1. Зробіть форк репозиторію
2. Створіть гілку для нової функції (`git checkout -b feature/amazing-feature`)
3. Закомітьте зміни (`git commit -m 'feat: add amazing feature'`)
4. Відправте зміни до гілки (`git push origin feature/amazing-feature`)
5. Відкрийте Pull Request

### Налаштування середовища розробки

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Ліцензія

Цей проєкт ліцензовано за ліценєю MIT - докладніше див. у файлі [LICENSE](../../../LICENSE).

## 🔒 Безпека

Докладніше про порядок повідомлення про вразливості див. у нашій [Політиці безпеки](../../../SECURITY.md).

## 👨💻 Автор

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Подяки

- Команді розробників BIND9 за чудовий DNS-сервер
- Спільноті Perl за надійні модулі SNMP
- Учасникам розробки та користувачам цього проєкту

## 📚 Ресурси

- [Документація BIND9](https://bind9.readthedocs.io/)
- [Документація Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Реєстр SNMP OID](http://www.oid-info.com/)
- [Вікі проєкту](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ План розвитку

- [ ] Підтримка SNMP v3 з автентифікацією
- [ ] Альтернативний експортер для Prometheus
- [ ] Веб-панель для перегляду статистики
- [ ] Підтримка контейнерів Docker
- [ ] Автоматизований скрипт встановлення
- [ ] Збір метрик продуктивності
- [ ] Зберігання історичних даних
- [ ] Налаштування порогів сповіщень

---

Щоб отримати додаткову інформацію, повідомити про помилку або запропонувати нову функцію, відвідайте [репозиторій GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

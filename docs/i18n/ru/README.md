# SNMP-статистика BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · **Русский** · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Комплексное решение для мониторинга DNS-серверов BIND9 на языке Perl, предоставляющее статистику по SNMP для интеграции с системами сетевого мониторинга.

## 🚀 Обзор

SNMP BIND9 Statistics представляет собой инструмент, связывающий встроенную статистику BIND9 с инфраструктурой мониторинга на базе SNMP. Он собирает подробные метрики DNS-сервера с помощью `rndc stats` и предоставляет их через SNMP, обеспечивая бесшовную интеграцию с такими платформами мониторинга, как Nagios, Zabbix, PRTG и другими.

## ✨ Возможности

- 📊 **Комплексный сбор статистики**
  - Типы запросов (A, AAAA, MX, PTR, TXT и др.)
  - Коды ответов и частота ошибок
  - Соотношение попаданий и промахов кэша
  - Статистика передачи зон
  - Метрики производительности резолвера

- 🔄 **Интеллектуальный опрос**
  - Настраиваемые интервалы опроса
  - Механизм кэширования для снижения нагрузки на систему
  - Возможность принудительного обновления
  - Автоматическая обработка ротации файлов статистики

- 🛡️ **Готовность к промышленной эксплуатации**
  - Поддержка SNMP v2c
  - Пользовательское сопоставление OID
  - Комплексная обработка ошибок
  - Подробное журналирование с помощью Log4perl
  - Обработка сигналов для корректного завершения работы

- 🔧 **Гибкая настройка**
  - Файлы конфигурации в формате INI
  - Поддержка переменных окружения
  - Переопределение параметров через командную строку
  - Поддержка нескольких экземпляров BIND9

## 📋 Требования

### Системные требования

- **Операционная система**: Linux/Unix с BIND9
- **Perl**: версия 5.10 или выше
- **BIND9**: с настроенным и работающим `rndc`
- **Права доступа**: право на чтение файла статистики BIND9

### Модули Perl

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

## 📦 Установка

### С GitHub

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

### С помощью Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Конфигурация

Создайте файл конфигурации `config.ini`:

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

### Переменные окружения

Вы можете переопределить параметры конфигурации с помощью переменных окружения:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Использование

### Базовое использование

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

### Локализация

Справка CLI и диагностические сообщения журналов поддерживают 45 локалей (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) без внешних зависимостей CPAN через `SNMP::BIND9::I18n`. Выбор локали учитывает `--lang`, затем `LC_ALL`, `LC_MESSAGES` и `LANG`, с откатом к `en`. Идентификаторы SNMP OID, токены протокола и числовые значения метрик остаются неизменными во всех локалях.

### Запуск в качестве службы

#### Служба Systemd

Создайте файл `/etc/systemd/system/bind9-snmp.service`:

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

Включите и запустите службу:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Скрипт Init.d (устаревшие системы)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Сопоставление SNMP OID

Инструмент использует следующую структуру OID:

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

### Запросы по SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Тестирование

### Модульные тесты

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Интеграционные тесты

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Ручное тестирование

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Интеграция с системами мониторинга

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Шаблон Zabbix

Импортируйте готовый шаблон Zabbix из `contrib/zabbix/bind9-snmp-template.xml`

### Пользовательский датчик PRTG

Используйте датчик SNMP Custom Advanced с предоставленными OID

## 🐛 Устранение неполадок

### Частые проблемы

1. **Ошибка доступа к файлу статистики (Permission Denied)**

   ```bash
   # Проверка прав доступа к файлу
   ls -l /var/cache/bind/named.stats

   # Исправление прав доступа
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Порт SNMP уже используется**

   ```bash
   # Проверка, какой процесс занимает порт 161
   sudo netstat -tulpn | grep 161

   # Использование альтернативного порта в конфигурации
   port = 1161
   ```

3. **Сбой команды rndc**

   ```bash
   # Ручная проверка rndc
   rndc stats

   # Проверка конфигурации rndc
   rndc-confgen -a
   ```

4. **Статистика не формируется**

   ```bash
   # Включение статистики в named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Режим отладки

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Вопросы производительности

- **Интервал опроса**: по умолчанию 300 секунд, настраивается в зависимости от требований мониторинга
- **Длительность кэширования**: статистика кэшируется между опросами для снижения нагрузки
- **Файловый ввод-вывод**: файл статистики читается только при необходимости
- **Потребление памяти**: обычно менее 20 МБ RSS
- **Нагрузка на CPU**: минимальная, кратковременные пики только во время сбора статистики

## 🤝 Участие в разработке

Мы приветствуем вклад в развитие проекта! Вы можете свободно отправлять Pull Request.

1. Сделайте форк репозитория
2. Создайте ветку для новой функциональности (`git checkout -b feature/amazing-feature`)
3. Зафиксируйте изменения (`git commit -m 'feat: add amazing feature'`)
4. Отправьте ветку в удаленный репозиторий (`git push origin feature/amazing-feature`)
5. Откройте Pull Request

### Настройка окружения разработки

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Лицензия

Этот проект распространяется под лицензией MIT: подробности см. в файле [LICENSE](../../../LICENSE).

## 🔒 Безопасность

Информацию о порядке сообщения об уязвимостях см. в нашей [Политике безопасности](../../../SECURITY.md).

## 👨💻 Автор

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Благодарности

- Команде разработчиков BIND9 за превосходный DNS-сервер
- Сообществу Perl за надежные модули SNMP
- Участникам разработки и пользователям проекта

## 📚 Ресурсы

- [Документация BIND9](https://bind9.readthedocs.io/)
- [Документация Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Реестр SNMP OID](http://www.oid-info.com/)
- [Вики проекта](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Дорожная карта

- [ ] Поддержка SNMP v3 с аутентификацией
- [ ] Альтернативный экспортер для Prometheus
- [ ] Веб-панель для отображения статистики
- [ ] Поддержка контейнеров Docker
- [ ] Автоматический скрипт установки
- [ ] Сбор метрик производительности
- [ ] Хранение исторических данных
- [ ] Настройка порогов оповещений

---

Дополнительную информацию, сообщения об ошибках и запросы на добавление новой функциональности можно найти в [репозитории GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::uk;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Збирає статистику з DNS-сервера BIND9 за допомогою \'rndc stats\' та надає її через SNMP.',
    'cli.opt_config' => '  --config=FILE    Шлях до файлу конфігурації',
    'cli.opt_help' => '  --help           Коротка довідка',
    'cli.opt_lang' => '  --lang=LOCALE    Код мови для повідомлень CLI (перевизначає LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Повна документація',
    'cli.opt_version' => '  --version        Показати версію',
    'cli.options_header' => 'Параметри:',
    'cli.usage_header' => 'Використання: snmp_bind9_stats.pl [параметри]',
    'cli.version_line' => 'snmp_bind9_stats.pl версія {version}',
    'log.agent_init_failed' => 'Не вдалося ініціалізувати SNMP-агент',
    'log.agent_init_failed_detail' => 'Не вдалося ініціалізувати SNMP-агент: {error}',
    'log.agent_starting' => 'Запуск агента статистики SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Агент статистики SNMP BIND9 зупинено',
    'log.config_not_found' => 'Файл конфігурації не знайдено: {file}',
    'log.config_parse_failed' => 'Не вдалося розібрати файл конфігурації: {errors}',
    'log.invalid_stats_object' => 'Передано некоректний об\'єкт статистики',
    'log.oid_mappings_initialized' => 'Ініціалізовано зіставлень OID: {count}',
    'log.parsed_stats' => 'Розібрано показників статистики: {count}',
    'log.rndc_failed' => 'Не вдалося виконати команду rndc stats',
    'log.signal_shutdown' => 'Отримано сигнал {signal}, коректне завершення роботи...',
    'log.snmp_run_error' => 'Помилка виконання SNMP-агента: {error}',
    'log.snmp_session_failed' => 'Не вдалося створити сесію SNMP: {error}',
    'log.snmp_started' => 'SNMP-агент успішно запущено',
    'log.snmp_starting' => 'Запуск SNMP-агента на {addr}:{port}',
    'log.snmp_stopped' => 'SNMP-агент зупинено',
    'log.stats_collect_error' => 'Помилка збору статистики: {error}',
    'log.stats_file_not_found' => 'Файл статистики не знайдено: {file}',
    'log.stats_init_failed' => 'Не вдалося ініціалізувати збирач статистики',
    'log.stats_init_failed_detail' => 'Не вдалося ініціалізувати збирач статистики: {error}',
    'log.stats_read_failed' => 'Не вдалося прочитати файл статистики: {error}',
    'log.stats_updated' => 'Статистику оновлено',
);

sub messages {
    return \%MESSAGES;
}

1;

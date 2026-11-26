# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ru;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Собирает статистику DNS-сервера BIND9 с помощью \'rndc stats\' и предоставляет ее по SNMP.',
    'cli.opt_config' => '  --config=FILE    Путь к файлу конфигурации',
    'cli.opt_help' => '  --help           Краткая справка',
    'cli.opt_lang' => '  --lang=LOCALE    Код языка для сообщений CLI (переопределяет LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Полная документация',
    'cli.opt_version' => '  --version        Показать версию',
    'cli.options_header' => 'Параметры:',
    'cli.usage_header' => 'Использование: snmp_bind9_stats.pl [параметры]',
    'cli.version_line' => 'snmp_bind9_stats.pl версия {version}',
    'log.agent_init_failed' => 'Не удалось инициализировать SNMP-агент',
    'log.agent_init_failed_detail' => 'Не удалось инициализировать SNMP-агент: {error}',
    'log.agent_starting' => 'Запуск агента статистики SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Агент статистики SNMP BIND9 остановлен',
    'log.config_not_found' => 'Файл конфигурации не найден: {file}',
    'log.config_parse_failed' => 'Не удалось разобрать файл конфигурации: {errors}',
    'log.invalid_stats_object' => 'Передан недопустимый объект статистики',
    'log.oid_mappings_initialized' => 'Инициализировано сопоставлений OID: {count}',
    'log.parsed_stats' => 'Разобрано показателей статистики: {count}',
    'log.rndc_failed' => 'Не удалось выполнить команду rndc stats',
    'log.signal_shutdown' => 'Получен сигнал {signal}, выполняется корректное завершение работы...',
    'log.snmp_run_error' => 'Ошибка работы SNMP-агента: {error}',
    'log.snmp_session_failed' => 'Не удалось создать сессию SNMP: {error}',
    'log.snmp_started' => 'SNMP-агент успешно запущен',
    'log.snmp_starting' => 'Запуск SNMP-агента на {addr}:{port}',
    'log.snmp_stopped' => 'SNMP-агент остановлен',
    'log.stats_collect_error' => 'Ошибка сбора статистики: {error}',
    'log.stats_file_not_found' => 'Файл статистики не найден: {file}',
    'log.stats_init_failed' => 'Не удалось инициализировать сборщик статистики',
    'log.stats_init_failed_detail' => 'Не удалось инициализировать сборщик статистики: {error}',
    'log.stats_read_failed' => 'Не удалось прочитать файл статистики: {error}',
    'log.stats_updated' => 'Статистика обновлена',
);

sub messages {
    return \%MESSAGES;
}

1;

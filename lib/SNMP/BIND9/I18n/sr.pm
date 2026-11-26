# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::sr;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Прикупља статистику са BIND9 DNS сервера помоћу \'rndc stats\' и излаже је путем SNMP-а.',
    'cli.opt_config' => '  --config=FILE    Путања до конфигурационе датотеке',
    'cli.opt_help' => '  --help           Кратка порука помоћи',
    'cli.opt_lang' => '  --lang=LOCALE    Ознака језика за CLI поруке (надјачава LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Потпуна документација',
    'cli.opt_version' => '  --version        Прикажи верзију',
    'cli.options_header' => 'Опције:',
    'cli.usage_header' => 'Употреба: snmp_bind9_stats.pl [опције]',
    'cli.version_line' => 'snmp_bind9_stats.pl верзија {version}',
    'log.agent_init_failed' => 'Иницијализација SNMP агента није успела',
    'log.agent_init_failed_detail' => 'Иницијализација SNMP агента није успела: {error}',
    'log.agent_starting' => 'Покретање SNMP BIND9 агента за статистику v{version}',
    'log.agent_stopped' => 'SNMP BIND9 агент за статистику је заустављен',
    'log.config_not_found' => 'Конфигурациона датотека није пронађена: {file}',
    'log.config_parse_failed' => 'Рашчлањивање конфигурационе датотеке није успело: {errors}',
    'log.invalid_stats_object' => 'Прослеђен је неважећи објекат статистике',
    'log.oid_mappings_initialized' => 'Иницијализовано {count} OID мапирања',
    'log.parsed_stats' => 'Рашчлањено {count} статистичких показатеља',
    'log.rndc_failed' => 'Извршавање команде rndc stats није успело',
    'log.signal_shutdown' => 'Примљен сигнал {signal}, уредно гашење...',
    'log.snmp_run_error' => 'Грешка при покретању SNMP агента: {error}',
    'log.snmp_session_failed' => 'Креирање SNMP сесије није успело: {error}',
    'log.snmp_started' => 'SNMP агент је успешно покренут',
    'log.snmp_starting' => 'Покретање SNMP агента на адреси {addr}:{port}',
    'log.snmp_stopped' => 'SNMP агент је заустављен',
    'log.stats_collect_error' => 'Грешка при прикупљању статистике: {error}',
    'log.stats_file_not_found' => 'Датотека статистике није пронађена: {file}',
    'log.stats_init_failed' => 'Иницијализација прикупљача статистике није успела',
    'log.stats_init_failed_detail' => 'Иницијализација прикупљача статистике није успела: {error}',
    'log.stats_read_failed' => 'Читање датотеке статистике није успело: {error}',
    'log.stats_updated' => 'Статистика је ажурирана',
);

sub messages {
    return \%MESSAGES;
}

1;

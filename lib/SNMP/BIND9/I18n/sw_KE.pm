# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::sw_KE;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Hukusanya takwimu kutoka seva ya DNS ya BIND9 kwa kutumia \'rndc stats\' na kuzionyesha kupitia SNMP.',
    'cli.opt_config' => '  --config=FILE    Njia ya faili ya usanidi',
    'cli.opt_help' => '  --help           Ujumbe mfupi wa usaidizi',
    'cli.opt_lang' => '  --lang=LOCALE    Msimbo wa lugha kwa ujumbe wa CLI (hubatilisha LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Nyaraka kamili',
    'cli.opt_version' => '  --version        Onyesha toleo',
    'cli.options_header' => 'Chaguo:',
    'cli.usage_header' => 'Matumizi: snmp_bind9_stats.pl [chaguo]',
    'cli.version_line' => 'snmp_bind9_stats.pl toleo {version}',
    'log.agent_init_failed' => 'Imeshindwa kuanzisha wakala wa SNMP',
    'log.agent_init_failed_detail' => 'Imeshindwa kuanzisha wakala wa SNMP: {error}',
    'log.agent_starting' => 'Inaanzisha Wakala wa Takwimu za BIND9 wa SNMP v{version}',
    'log.agent_stopped' => 'Wakala wa Takwimu za BIND9 wa SNMP amesimamishwa',
    'log.config_not_found' => 'Faili ya usanidi haikupatikana: {file}',
    'log.config_parse_failed' => 'Imeshindwa kuchanganua faili ya usanidi: {errors}',
    'log.invalid_stats_object' => 'Kipengee cha takwimu kilichotolewa si sahihi',
    'log.oid_mappings_initialized' => 'Uoanishaji {count} wa OID umeanzishwa',
    'log.parsed_stats' => 'Takwimu {count} zimechanganuliwa',
    'log.rndc_failed' => 'Imeshindwa kutekeleza amri ya rndc stats',
    'log.signal_shutdown' => 'Ishara {signal} imepokelewa, inazima kwa utaratibu...',
    'log.snmp_run_error' => 'Hitilafu wakati wa kuendesha wakala wa SNMP: {error}',
    'log.snmp_session_failed' => 'Imeshindwa kuunda kipindi cha SNMP: {error}',
    'log.snmp_started' => 'Wakala wa SNMP ameanzishwa kwa mafanikio',
    'log.snmp_starting' => 'Inaanzisha wakala wa SNMP kwenye {addr}:{port}',
    'log.snmp_stopped' => 'Wakala wa SNMP amesimamishwa',
    'log.stats_collect_error' => 'Hitilafu wakati wa kukusanya takwimu: {error}',
    'log.stats_file_not_found' => 'Faili ya takwimu haikupatikana: {file}',
    'log.stats_init_failed' => 'Imeshindwa kuanzisha mkusanyaji wa takwimu',
    'log.stats_init_failed_detail' => 'Imeshindwa kuanzisha mkusanyaji wa takwimu: {error}',
    'log.stats_read_failed' => 'Imeshindwa kusoma faili ya takwimu: {error}',
    'log.stats_updated' => 'Takwimu zimesasishwa',
);

sub messages {
    return \%MESSAGES;
}

1;

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ha_NG;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Yana tattara ƙididdiga daga sabar DNS ta BIND9 ta amfani da \'rndc stats\' kuma yana bayyana su ta hanyar SNMP.',
    'cli.opt_config' => '  --config=FILE    Hanyar fayil ɗin saiti',
    'cli.opt_help' => '  --help           Taƙaitaccen saƙon taimako',
    'cli.opt_lang' => '  --lang=LOCALE    Lambar harshe don saƙonnin CLI (yana maye gurbin LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Cikakken bayani',
    'cli.opt_version' => '  --version        Nuna siga',
    'cli.options_header' => 'Zaɓuɓɓuka:',
    'cli.usage_header' => 'Amfani: snmp_bind9_stats.pl [zaɓuɓɓuka]',
    'cli.version_line' => 'snmp_bind9_stats.pl siga {version}',
    'log.agent_init_failed' => 'An gaza fara wakilin SNMP',
    'log.agent_init_failed_detail' => 'An gaza fara wakilin SNMP: {error}',
    'log.agent_starting' => 'Ana fara Wakilin Ƙididdigar SNMP BIND9 v{version}',
    'log.agent_stopped' => 'An dakatar da Wakilin Ƙididdigar SNMP BIND9',
    'log.config_not_found' => 'Ba a sami fayil ɗin saiti ba: {file}',
    'log.config_parse_failed' => 'An gaza tantance fayil ɗin saiti: {errors}',
    'log.invalid_stats_object' => 'An bayar da abin ƙididdiga mara inganci',
    'log.oid_mappings_initialized' => 'An fara taswirar OID guda {count}',
    'log.parsed_stats' => 'An tantance ƙididdiga guda {count}',
    'log.rndc_failed' => 'An gaza aiwatar da umarnin rndc stats',
    'log.signal_shutdown' => 'An karɓi siginar {signal}, ana rufewa cikin tsari...',
    'log.snmp_run_error' => 'Kuskure wajen gudanar da wakilin SNMP: {error}',
    'log.snmp_session_failed' => 'An gaza ƙirƙirar zaman SNMP: {error}',
    'log.snmp_started' => 'An fara wakilin SNMP cikin nasara',
    'log.snmp_starting' => 'Ana fara wakilin SNMP a {addr}:{port}',
    'log.snmp_stopped' => 'An dakatar da wakilin SNMP',
    'log.stats_collect_error' => 'Kuskure wajen tattara ƙididdiga: {error}',
    'log.stats_file_not_found' => 'Ba a sami fayil ɗin ƙididdiga ba: {file}',
    'log.stats_init_failed' => 'An gaza fara mai tattara ƙididdiga',
    'log.stats_init_failed_detail' => 'An gaza fara mai tattara ƙididdiga: {error}',
    'log.stats_read_failed' => 'An gaza karanta fayil ɗin ƙididdiga: {error}',
    'log.stats_updated' => 'An sabunta ƙididdiga',
);

sub messages {
    return \%MESSAGES;
}

1;

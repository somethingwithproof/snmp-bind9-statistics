# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ig_NG;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Na-achịkọta ọnụọgụgụ site na sava DNS BIND9 site na iji \'rndc stats\' ma na-egosipụta ha site na SNMP.',
    'cli.opt_config' => '  --config=FILE    Ụzọ gaa na faịlụ nhazi',
    'cli.opt_help' => '  --help           Ozi enyemaka dị mkpirikpi',
    'cli.opt_lang' => '  --lang=LOCALE    Koodu asụsụ maka ozi CLI (na-anọchi LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Akwụkwọ ntụziaka zuru ezu',
    'cli.opt_version' => '  --version        Gosi ụdị mbipụta',
    'cli.options_header' => 'Nhọrọ:',
    'cli.usage_header' => 'Ojiji: snmp_bind9_stats.pl [nhọrọ]',
    'cli.version_line' => 'snmp_bind9_stats.pl ụdị mbipụta {version}',
    'log.agent_init_failed' => 'Mbido onye nnọchi anya SNMP kụrụ afọ n\'ala',
    'log.agent_init_failed_detail' => 'Mbido onye nnọchi anya SNMP kụrụ afọ n\'ala: {error}',
    'log.agent_starting' => 'Na-amalite Onye Nnọchi Anya Ọnụọgụgụ SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Onye Nnọchi Anya Ọnụọgụgụ SNMP BIND9 akwụsịla',
    'log.config_not_found' => 'Ahụghị faịlụ nhazi: {file}',
    'log.config_parse_failed' => 'Ịkọwa faịlụ nhazi kụrụ afọ n\'ala: {errors}',
    'log.invalid_stats_object' => 'E nyere ihe ọnụọgụgụ ezighị ezi',
    'log.oid_mappings_initialized' => 'E bidoro njikọ OID {count}',
    'log.parsed_stats' => 'A kọwara ọnụọgụgụ {count}',
    'log.rndc_failed' => 'Imezu iwu rndc stats kụrụ afọ n\'ala',
    'log.signal_shutdown' => 'E nwetara akara {signal}, na-emechi n\'ụzọ dị mma...',
    'log.snmp_run_error' => 'Njehie n\'ịgba onye nnọchi anya SNMP: {error}',
    'log.snmp_session_failed' => 'Ịmepụta oge SNMP kụrụ afọ n\'ala: {error}',
    'log.snmp_started' => 'Onye nnọchi anya SNMP malitere nke ọma',
    'log.snmp_starting' => 'Na-amalite onye nnọchi anya SNMP na {addr}:{port}',
    'log.snmp_stopped' => 'Onye nnọchi anya SNMP akwụsịla',
    'log.stats_collect_error' => 'Njehie n\'ịchịkọta ọnụọgụgụ: {error}',
    'log.stats_file_not_found' => 'Ahụghị faịlụ ọnụọgụgụ: {file}',
    'log.stats_init_failed' => 'Mbido ngwa nchịkọta ọnụọgụgụ kụrụ afọ n\'ala',
    'log.stats_init_failed_detail' => 'Mbido ngwa nchịkọta ọnụọgụgụ kụrụ afọ n\'ala: {error}',
    'log.stats_read_failed' => 'Ịgụ faịlụ ọnụọgụgụ kụrụ afọ n\'ala: {error}',
    'log.stats_updated' => 'E melitere ọnụọgụgụ',
);

sub messages {
    return \%MESSAGES;
}

1;

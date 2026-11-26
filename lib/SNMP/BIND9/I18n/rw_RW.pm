# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::rw_RW;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Ikusanya imibare y\'imikorere muri seriveri ya DNS ya BIND9 ikoresheje \'rndc stats\' ikanayitanga binyuze kuri SNMP.',
    'cli.opt_config' => '  --config=FILE    Inzira igana kuri dosiye y\'igenamiterere',
    'cli.opt_help' => '  --help           Ubutumwa bugufi bw\'ubufasha',
    'cli.opt_lang' => '  --lang=LOCALE    Kode y\'ururimi rw\'ubutumwa bwa CLI (isimbura LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Inyandiko irambuye y\'imikoreshereze',
    'cli.opt_version' => '  --version        Erekana verisiyo',
    'cli.options_header' => 'Amahitamo:',
    'cli.usage_header' => 'Imikoreshereze: snmp_bind9_stats.pl [amahitamo]',
    'cli.version_line' => 'snmp_bind9_stats.pl verisiyo {version}',
    'log.agent_init_failed' => 'Gutangiza agent ya SNMP byanze',
    'log.agent_init_failed_detail' => 'Gutangiza agent ya SNMP byanze: {error}',
    'log.agent_starting' => 'Gutangira SNMP BIND9 Statistics Agent v{version}',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent yahagaze',
    'log.config_not_found' => 'Dosiye y\'igenamiterere ntiyabonetse: {file}',
    'log.config_parse_failed' => 'Gusesengura dosiye y\'igenamiterere byanze: {errors}',
    'log.invalid_stats_object' => 'Ikintu cy\'imibare y\'imikorere cyatanzwe nticyemewe',
    'log.oid_mappings_initialized' => 'Hashyizweho amahuza ya OID {count}',
    'log.parsed_stats' => 'Hasesenguwe imibare y\'imikorere {count}',
    'log.rndc_failed' => 'Gukora itegeko rya rndc stats byanze',
    'log.signal_shutdown' => 'Hakiriwe ikimenyetso {signal}, guhagarara mu mutuzo...',
    'log.snmp_run_error' => 'Ikosa mu gukora kwa agent ya SNMP: {error}',
    'log.snmp_session_failed' => 'Gufungura icyiciro cya SNMP byanze: {error}',
    'log.snmp_started' => 'Agent ya SNMP yatangiye neza',
    'log.snmp_starting' => 'Gutangira agent ya SNMP kuri {addr}:{port}',
    'log.snmp_stopped' => 'Agent ya SNMP yahagaze',
    'log.stats_collect_error' => 'Ikosa mu gukusanya imibare y\'imikorere: {error}',
    'log.stats_file_not_found' => 'Dosiye y\'imibare y\'imikorere ntiyabonetse: {file}',
    'log.stats_init_failed' => 'Gutangiza igikusanya imibare y\'imikorere byanze',
    'log.stats_init_failed_detail' => 'Gutangiza igikusanya imibare y\'imikorere byanze: {error}',
    'log.stats_read_failed' => 'Gusoma dosiye y\'imibare y\'imikorere byanze: {error}',
    'log.stats_updated' => 'Imibare y\'imikorere yavuguruwe',
);

sub messages {
    return \%MESSAGES;
}

1;

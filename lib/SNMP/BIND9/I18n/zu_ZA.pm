# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::zu_ZA;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Iqoqa izibalo kuseva ye-DNS ye-BIND9 isebenzisa \'rndc stats\' bese iziveza nge-SNMP.',
    'cli.opt_config' => '  --config=FILE    Indlela eya efayeleni lokumisa',
    'cli.opt_help' => '  --help           Umlayezo omfushane wosizo',
    'cli.opt_lang' => '  --lang=LOCALE    Ikhodi yolimi yemilayezo ye-CLI (ithatha indawo ye-LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Imibhalo ephelele',
    'cli.opt_version' => '  --version        Bonisa inguqulo',
    'cli.options_header' => 'Izinketho:',
    'cli.usage_header' => 'Ukusetshenziswa: snmp_bind9_stats.pl [izinketho]',
    'cli.version_line' => 'snmp_bind9_stats.pl inguqulo {version}',
    'log.agent_init_failed' => 'Yehlulekile ukuqalisa i-agent ye-SNMP',
    'log.agent_init_failed_detail' => 'Yehlulekile ukuqalisa i-agent ye-SNMP: {error}',
    'log.agent_starting' => 'Iqalisa i-Agent Yezibalo ze-SNMP BIND9 v{version}',
    'log.agent_stopped' => 'I-Agent Yezibalo ze-SNMP BIND9 imisiwe',
    'log.config_not_found' => 'Ifayela lokumisa alitholakalanga: {file}',
    'log.config_parse_failed' => 'Yehlulekile ukuhlaziya ifayela lokumisa: {errors}',
    'log.invalid_stats_object' => 'Kunikezwe into yezibalo engavumelekile',
    'log.oid_mappings_initialized' => 'Kuqaliswe ukumepha kwama-OID okungu-{count}',
    'log.parsed_stats' => 'Kuhlaziywe izibalo ezingu-{count}',
    'log.rndc_failed' => 'Yehlulekile ukusebenzisa umyalo we-rndc stats',
    'log.signal_shutdown' => 'Kutholwe isignali {signal}, iyacisha ngokufanele...',
    'log.snmp_run_error' => 'Iphutha ekusebenziseni i-agent ye-SNMP: {error}',
    'log.snmp_session_failed' => 'Yehlulekile ukwakha iseshini ye-SNMP: {error}',
    'log.snmp_started' => 'I-agent ye-SNMP iqalwe ngempumelelo',
    'log.snmp_starting' => 'Iqalisa i-agent ye-SNMP ku-{addr}:{port}',
    'log.snmp_stopped' => 'I-agent ye-SNMP imisiwe',
    'log.stats_collect_error' => 'Iphutha ekuqoqeni izibalo: {error}',
    'log.stats_file_not_found' => 'Ifayela lezibalo alitholakalanga: {file}',
    'log.stats_init_failed' => 'Yehlulekile ukuqalisa umqoqi wezibalo',
    'log.stats_init_failed_detail' => 'Yehlulekile ukuqalisa umqoqi wezibalo: {error}',
    'log.stats_read_failed' => 'Yehlulekile ukufunda ifayela lezibalo: {error}',
    'log.stats_updated' => 'Izibalo zibuyekeziwe',
);

sub messages {
    return \%MESSAGES;
}

1;

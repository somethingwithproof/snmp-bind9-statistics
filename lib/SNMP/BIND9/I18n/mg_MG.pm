# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::mg_MG;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Manangona antontan\'isa avy amin\'ny mpizara DNS BIND9 amin\'ny alalan\'ny \'rndc stats\' ary manolotra azy ireo amin\'ny SNMP.',
    'cli.opt_config' => '  --config=FILE    Lalan\'ny rakitra kirakira',
    'cli.opt_help' => '  --help           Hafatra fanampiana fohy',
    'cli.opt_lang' => '  --lang=LOCALE    Kaodim-piteny ho an\'ny hafatra CLI (manolo ny LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Torolalana feno',
    'cli.opt_version' => '  --version        Mampiseho ny kinova',
    'cli.options_header' => 'Safidy:',
    'cli.usage_header' => 'Fampiasana: snmp_bind9_stats.pl [safidy]',
    'cli.version_line' => 'snmp_bind9_stats.pl kinova {version}',
    'log.agent_init_failed' => 'Tsy nahomby ny fanombohana ny agent SNMP',
    'log.agent_init_failed_detail' => 'Tsy nahomby ny fanombohana ny agent SNMP: {error}',
    'log.agent_starting' => 'Manomboka ny Agent Antontan\'isa BIND9 SNMP v{version}',
    'log.agent_stopped' => 'Nijanona ny Agent Antontan\'isa BIND9 SNMP',
    'log.config_not_found' => 'Tsy hita ny rakitra kirakira: {file}',
    'log.config_parse_failed' => 'Tsy nahomby ny famakiana ny rakitra kirakira: {errors}',
    'log.invalid_stats_object' => 'Zavatra antontan\'isa tsy manan-kery no nomena',
    'log.oid_mappings_initialized' => 'Natomboka ny fampifanarahana OID {count}',
    'log.parsed_stats' => 'Voavaky ny antontan\'isa {count}',
    'log.rndc_failed' => 'Tsy nahomby ny fanatanterahana ny baiko rndc stats',
    'log.signal_shutdown' => 'Naharay famantarana {signal}, manajanona am-pilaminana...',
    'log.snmp_run_error' => 'Hadisoana nandritra ny fandehanan\'ny agent SNMP: {error}',
    'log.snmp_session_failed' => 'Tsy nahomby ny famoronana session SNMP: {error}',
    'log.snmp_started' => 'Natomboka soa aman-tsara ny agent SNMP',
    'log.snmp_starting' => 'Manomboka ny agent SNMP ao amin\'ny {addr}:{port}',
    'log.snmp_stopped' => 'Nijanona ny agent SNMP',
    'log.stats_collect_error' => 'Hadisoana tamin\'ny fanangonana antontan\'isa: {error}',
    'log.stats_file_not_found' => 'Tsy hita ny rakitra antontan\'isa: {file}',
    'log.stats_init_failed' => 'Tsy nahomby ny fanombohana ny mpanangona antontan\'isa',
    'log.stats_init_failed_detail' => 'Tsy nahomby ny fanombohana ny mpanangona antontan\'isa: {error}',
    'log.stats_read_failed' => 'Tsy nahomby ny famakiana ny rakitra antontan\'isa: {error}',
    'log.stats_updated' => 'Nohavaozina ny antontan\'isa',
);

sub messages {
    return \%MESSAGES;
}

1;

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::so_SO;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Wuxuu ka ururiyaa tirokoobka adeegaha BIND9 DNS isagoo adeegsanaya \'rndc stats\' wuxuuna ku soo bandhigaa SNMP.',
    'cli.opt_config' => '  --config=FILE    Waddada faylka habaynta',
    'cli.opt_help' => '  --help           Fariin caawimo oo kooban',
    'cli.opt_lang' => '  --lang=LOCALE    Koodhka luqadda ee fariimaha CLI (wuxuu beddelaa LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Dukumiintiga buuxa',
    'cli.opt_version' => '  --version        Muuji nooca',
    'cli.options_header' => 'Ikhtiyaarro:',
    'cli.usage_header' => 'Isticmaal: snmp_bind9_stats.pl [ikhtiyaarro]',
    'cli.version_line' => 'snmp_bind9_stats.pl nooca {version}',
    'log.agent_init_failed' => 'Way fashilantay bilaabista wakiilka SNMP',
    'log.agent_init_failed_detail' => 'Way fashilantay bilaabista wakiilka SNMP: {error}',
    'log.agent_starting' => 'Waxaa la bilaabayaa Wakiilka Tirokoobka SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Wakiilka Tirokoobka SNMP BIND9 wuu istaagay',
    'log.config_not_found' => 'Faylka habaynta lama helin: {file}',
    'log.config_parse_failed' => 'Way fashilantay falanqaynta faylka habaynta: {errors}',
    'log.invalid_stats_object' => 'Walax tirokoob oo aan sax ahayn ayaa la bixiyay',
    'log.oid_mappings_initialized' => 'Waxaa la bilaabay {count} khariidadood oo OID ah',
    'log.parsed_stats' => 'Waxaa la falanqeeyay {count} tirokoob',
    'log.rndc_failed' => 'Way fashilantay fulinta amarka rndc stats',
    'log.signal_shutdown' => 'Waxaa la helay calaamadda {signal}, si deggan ayaa loo xirayaa...',
    'log.snmp_run_error' => 'Khalad ka dhacay socodsiinta wakiilka SNMP: {error}',
    'log.snmp_session_failed' => 'Way fashilantay abuurista fadhiga SNMP: {error}',
    'log.snmp_started' => 'Wakiilka SNMP si guul leh ayuu u bilowday',
    'log.snmp_starting' => 'Waxaa la bilaabayaa wakiilka SNMP iyadoo la adeegsanayo {addr}:{port}',
    'log.snmp_stopped' => 'Wakiilka SNMP wuu istaagay',
    'log.stats_collect_error' => 'Khalad ka dhacay ururinta tirokoobka: {error}',
    'log.stats_file_not_found' => 'Faylka tirokoobka lama helin: {file}',
    'log.stats_init_failed' => 'Way fashilantay bilaabista ururiyaha tirokoobka',
    'log.stats_init_failed_detail' => 'Way fashilantay bilaabista ururiyaha tirokoobka: {error}',
    'log.stats_read_failed' => 'Way fashilantay akhrinta faylka tirokoobka: {error}',
    'log.stats_updated' => 'Tirokoobka waa la cusboonaysiiyay',
);

sub messages {
    return \%MESSAGES;
}

1;

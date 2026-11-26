# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::fil;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Nangongolekta ng mga istatistika mula sa isang BIND9 DNS server gamit ang \'rndc stats\' at inilalantad ang mga ito sa pamamagitan ng SNMP.',
    'cli.opt_config' => '  --config=FILE    Path patungo sa configuration file',
    'cli.opt_help' => '  --help           Maikling mensahe ng tulong',
    'cli.opt_lang' => '  --lang=LOCALE    Code ng wika para sa mga mensahe ng CLI (pinapalitan ang LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Buong dokumentasyon',
    'cli.opt_version' => '  --version        Ipakita ang bersyon',
    'cli.options_header' => 'Mga Opsyon:',
    'cli.usage_header' => 'Paggamit: snmp_bind9_stats.pl [mga opsyon]',
    'cli.version_line' => 'snmp_bind9_stats.pl bersyon {version}',
    'log.agent_init_failed' => 'Nabigong i-initialize ang SNMP agent',
    'log.agent_init_failed_detail' => 'Nabigong i-initialize ang SNMP agent: {error}',
    'log.agent_starting' => 'Sinisimulan ang SNMP BIND9 Statistics Agent v{version}',
    'log.agent_stopped' => 'Itinigil ang SNMP BIND9 Statistics Agent',
    'log.config_not_found' => 'Hindi mahanap ang config file: {file}',
    'log.config_parse_failed' => 'Nabigong i-parse ang config file: {errors}',
    'log.invalid_stats_object' => 'Hindi wastong statistics object ang ibinigay',
    'log.oid_mappings_initialized' => 'Na-initialize ang {count} OID mapping',
    'log.parsed_stats' => 'Na-parse ang {count} istatistika',
    'log.rndc_failed' => 'Nabigong patakbuhin ang rndc stats command',
    'log.signal_shutdown' => 'Nakatanggap ng signal na {signal}, maayos na magsasara...',
    'log.snmp_run_error' => 'Error sa pagpapatakbo ng SNMP agent: {error}',
    'log.snmp_session_failed' => 'Nabigong gumawa ng SNMP session: {error}',
    'log.snmp_started' => 'Matagumpay na nasimulan ang SNMP agent',
    'log.snmp_starting' => 'Sinisimulan ang SNMP agent sa {addr}:{port}',
    'log.snmp_stopped' => 'Itinigil ang SNMP agent',
    'log.stats_collect_error' => 'Error sa pangongolekta ng mga istatistika: {error}',
    'log.stats_file_not_found' => 'Hindi mahanap ang stats file: {file}',
    'log.stats_init_failed' => 'Nabigong i-initialize ang tagakolekta ng istatistika',
    'log.stats_init_failed_detail' => 'Nabigong i-initialize ang tagakolekta ng istatistika: {error}',
    'log.stats_read_failed' => 'Nabigong basahin ang stats file: {error}',
    'log.stats_updated' => 'Na-update ang mga istatistika',
);

sub messages {
    return \%MESSAGES;
}

1;

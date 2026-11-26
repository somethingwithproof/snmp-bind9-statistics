# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::sv;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Samlar in statistik från en BIND9 DNS-server med \'rndc stats\' och exponerar den via SNMP.',
    'cli.opt_config' => '  --config=FILE    Sökväg till konfigurationsfil',
    'cli.opt_help' => '  --help           Kort hjälpmeddelande',
    'cli.opt_lang' => '  --lang=LOCALE    Språkkod för CLI-meddelanden (åsidosätter LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Fullständig dokumentation',
    'cli.opt_version' => '  --version        Visa version',
    'cli.options_header' => 'Alternativ:',
    'cli.usage_header' => 'Användning: snmp_bind9_stats.pl [alternativ]',
    'cli.version_line' => 'snmp_bind9_stats.pl version {version}',
    'log.agent_init_failed' => 'Misslyckades med att initiera SNMP-agent',
    'log.agent_init_failed_detail' => 'Misslyckades med att initiera SNMP-agent: {error}',
    'log.agent_starting' => 'Startar SNMP BIND9 Statistics Agent v{version}',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent stoppad',
    'log.config_not_found' => 'Konfigurationsfil hittades inte: {file}',
    'log.config_parse_failed' => 'Misslyckades med att tolka konfigurationsfil: {errors}',
    'log.invalid_stats_object' => 'Ogiltigt statistikobjekt angivet',
    'log.oid_mappings_initialized' => 'Initierade {count} OID-mappningar',
    'log.parsed_stats' => 'Tolkade {count} statistikvärden',
    'log.rndc_failed' => 'Misslyckades med att köra kommandot rndc stats',
    'log.signal_shutdown' => 'Tog emot signal {signal}, stänger ned kontrollerat...',
    'log.snmp_run_error' => 'Fel vid körning av SNMP-agent: {error}',
    'log.snmp_session_failed' => 'Misslyckades med att skapa SNMP-session: {error}',
    'log.snmp_started' => 'SNMP-agent startad',
    'log.snmp_starting' => 'Startar SNMP-agent på {addr}:{port}',
    'log.snmp_stopped' => 'SNMP-agent stoppad',
    'log.stats_collect_error' => 'Fel vid insamling av statistik: {error}',
    'log.stats_file_not_found' => 'Statistikfil hittades inte: {file}',
    'log.stats_init_failed' => 'Misslyckades med att initiera statistikinsamlare',
    'log.stats_init_failed_detail' => 'Misslyckades med att initiera statistikinsamlare: {error}',
    'log.stats_read_failed' => 'Misslyckades med att läsa statistikfil: {error}',
    'log.stats_updated' => 'Statistik uppdaterad',
);

sub messages {
    return \%MESSAGES;
}

1;

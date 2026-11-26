# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::af_ZA;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Versamel statistieke vanaf \'n BIND9-DNS-bediener met behulp van \'rndc stats\' en stel dit via SNMP beskikbaar.',
    'cli.opt_config' => '  --config=FILE    Pad na konfigurasielêer',
    'cli.opt_help' => '  --help           Kort hulpboodskap',
    'cli.opt_lang' => '  --lang=LOCALE    Taalkode vir CLI-boodskappe (oorskryf LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Volledige dokumentasie',
    'cli.opt_version' => '  --version        Wys weergawe',
    'cli.options_header' => 'Opsies:',
    'cli.usage_header' => 'Gebruik: snmp_bind9_stats.pl [opsies]',
    'cli.version_line' => 'snmp_bind9_stats.pl weergawe {version}',
    'log.agent_init_failed' => 'Kon nie SNMP-agent inisialiseer nie',
    'log.agent_init_failed_detail' => 'Kon nie SNMP-agent inisialiseer nie: {error}',
    'log.agent_starting' => 'Start SNMP BIND9-statistiekagent v{version}',
    'log.agent_stopped' => 'SNMP BIND9-statistiekagent gestop',
    'log.config_not_found' => 'Konfigurasielêer nie gevind nie: {file}',
    'log.config_parse_failed' => 'Kon nie konfigurasielêer ontleed nie: {errors}',
    'log.invalid_stats_object' => 'Ongeldige statistiekobjek verskaf',
    'log.oid_mappings_initialized' => '{count} OID-karterings geïnisialiseer',
    'log.parsed_stats' => '{count} statistieke ontleed',
    'log.rndc_failed' => 'Kon nie rndc stats-opdrag uitvoer nie',
    'log.signal_shutdown' => 'Sein {signal} ontvang, sluit ordelik af...',
    'log.snmp_run_error' => 'Fout tydens uitvoering van SNMP-agent: {error}',
    'log.snmp_session_failed' => 'Kon nie SNMP-sessie skep nie: {error}',
    'log.snmp_started' => 'SNMP-agent suksesvol gestart',
    'log.snmp_starting' => 'Start SNMP-agent op {addr}:{port}',
    'log.snmp_stopped' => 'SNMP-agent gestop',
    'log.stats_collect_error' => 'Fout tydens versameling van statistieke: {error}',
    'log.stats_file_not_found' => 'Statistieklêer nie gevind nie: {file}',
    'log.stats_init_failed' => 'Kon nie statistiekversamelaar inisialiseer nie',
    'log.stats_init_failed_detail' => 'Kon nie statistiekversamelaar inisialiseer nie: {error}',
    'log.stats_read_failed' => 'Kon nie statistieklêer lees nie: {error}',
    'log.stats_updated' => 'Statistieke bygewerk',
);

sub messages {
    return \%MESSAGES;
}

1;

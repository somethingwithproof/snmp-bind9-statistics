# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::nl;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Verzamelt statistieken van een BIND9 DNS-server met behulp van \'rndc stats\' en stelt deze beschikbaar via SNMP.',
    'cli.opt_config' => '  --config=FILE    Pad naar configuratiebestand',
    'cli.opt_help' => '  --help           Korte hulptekst',
    'cli.opt_lang' => '  --lang=LOCALE    Taalcode voor CLI-meldingen (overschrijft LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Volledige documentatie',
    'cli.opt_version' => '  --version        Versie tonen',
    'cli.options_header' => 'Opties:',
    'cli.usage_header' => 'Gebruik: snmp_bind9_stats.pl [opties]',
    'cli.version_line' => 'snmp_bind9_stats.pl versie {version}',
    'log.agent_init_failed' => 'Initialisatie van SNMP-agent mislukt',
    'log.agent_init_failed_detail' => 'Initialisatie van SNMP-agent mislukt: {error}',
    'log.agent_starting' => 'SNMP BIND9 Statistics Agent v{version} wordt gestart',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent gestopt',
    'log.config_not_found' => 'Configuratiebestand niet gevonden: {file}',
    'log.config_parse_failed' => 'Parseren van configuratiebestand mislukt: {errors}',
    'log.invalid_stats_object' => 'Ongeldig statistiekenobject opgegeven',
    'log.oid_mappings_initialized' => '{count} OID-koppelingen geïnitialiseerd',
    'log.parsed_stats' => '{count} statistieken geparseerd',
    'log.rndc_failed' => 'Uitvoeren van opdracht rndc stats mislukt',
    'log.signal_shutdown' => 'Signaal {signal} ontvangen, netjes afsluiten...',
    'log.snmp_run_error' => 'Fout bij uitvoeren van SNMP-agent: {error}',
    'log.snmp_session_failed' => 'Aanmaken van SNMP-sessie mislukt: {error}',
    'log.snmp_started' => 'SNMP-agent succesvol gestart',
    'log.snmp_starting' => 'SNMP-agent starten op {addr}:{port}',
    'log.snmp_stopped' => 'SNMP-agent gestopt',
    'log.stats_collect_error' => 'Fout bij verzamelen van statistieken: {error}',
    'log.stats_file_not_found' => 'Statistiekenbestand niet gevonden: {file}',
    'log.stats_init_failed' => 'Initialisatie van statistiekenverzamelaar mislukt',
    'log.stats_init_failed_detail' => 'Initialisatie van statistiekenverzamelaar mislukt: {error}',
    'log.stats_read_failed' => 'Lezen van statistiekenbestand mislukt: {error}',
    'log.stats_updated' => 'Statistieken bijgewerkt',
);

sub messages {
    return \%MESSAGES;
}

1;

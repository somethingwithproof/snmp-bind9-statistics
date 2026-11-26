# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::bs;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Prikuplja statistiku sa BIND9 DNS servera pomoću \'rndc stats\' i izlaže je putem SNMP-a.',
    'cli.opt_config' => '  --config=FILE    Putanja do konfiguracione datoteke',
    'cli.opt_help' => '  --help           Kratka poruka pomoći',
    'cli.opt_lang' => '  --lang=LOCALE    Oznaka jezika za CLI poruke (nadjačava LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Potpuna dokumentacija',
    'cli.opt_version' => '  --version        Prikaži verziju',
    'cli.options_header' => 'Opcije:',
    'cli.usage_header' => 'Upotreba: snmp_bind9_stats.pl [opcije]',
    'cli.version_line' => 'snmp_bind9_stats.pl verzija {version}',
    'log.agent_init_failed' => 'Inicijalizacija SNMP agenta nije uspjela',
    'log.agent_init_failed_detail' => 'Inicijalizacija SNMP agenta nije uspjela: {error}',
    'log.agent_starting' => 'Pokretanje SNMP BIND9 agenta za statistiku v{version}',
    'log.agent_stopped' => 'SNMP BIND9 agent za statistiku je zaustavljen',
    'log.config_not_found' => 'Konfiguraciona datoteka nije pronađena: {file}',
    'log.config_parse_failed' => 'Raščlanjivanje konfiguracione datoteke nije uspjelo: {errors}',
    'log.invalid_stats_object' => 'Proslijeđen je nevažeći objekat statistike',
    'log.oid_mappings_initialized' => 'Inicijalizirano {count} OID mapiranja',
    'log.parsed_stats' => 'Raščlanjeno {count} statističkih pokazatelja',
    'log.rndc_failed' => 'Izvršavanje komande rndc stats nije uspjelo',
    'log.signal_shutdown' => 'Primljen signal {signal}, uredno gašenje...',
    'log.snmp_run_error' => 'Greška pri pokretanju SNMP agenta: {error}',
    'log.snmp_session_failed' => 'Kreiranje SNMP sesije nije uspjelo: {error}',
    'log.snmp_started' => 'SNMP agent uspješno pokrenut',
    'log.snmp_starting' => 'Pokretanje SNMP agenta na adresi {addr}:{port}',
    'log.snmp_stopped' => 'SNMP agent zaustavljen',
    'log.stats_collect_error' => 'Greška pri prikupljanju statistike: {error}',
    'log.stats_file_not_found' => 'Datoteka statistike nije pronađena: {file}',
    'log.stats_init_failed' => 'Inicijalizacija prikupljača statistike nije uspjela',
    'log.stats_init_failed_detail' => 'Inicijalizacija prikupljača statistike nije uspjela: {error}',
    'log.stats_read_failed' => 'Čitanje datoteke statistike nije uspjelo: {error}',
    'log.stats_updated' => 'Statistika je ažurirana',
);

sub messages {
    return \%MESSAGES;
}

1;

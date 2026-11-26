# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::hr;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Prikuplja statistiku s BIND9 DNS poslužitelja pomoću \'rndc stats\' i izlaže je putem SNMP-a.',
    'cli.opt_config' => '  --config=FILE    Putanja do konfiguracijske datoteke',
    'cli.opt_help' => '  --help           Kratka poruka za pomoć',
    'cli.opt_lang' => '  --lang=LOCALE    Kod jezika za CLI poruke (nadjačava LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Cjelovita dokumentacija',
    'cli.opt_version' => '  --version        Prikaži inačicu',
    'cli.options_header' => 'Mogućnosti:',
    'cli.usage_header' => 'Uporaba: snmp_bind9_stats.pl [mogućnosti]',
    'cli.version_line' => 'snmp_bind9_stats.pl inačica {version}',
    'log.agent_init_failed' => 'Neuspjela inicijalizacija SNMP agenta',
    'log.agent_init_failed_detail' => 'Neuspjela inicijalizacija SNMP agenta: {error}',
    'log.agent_starting' => 'Pokretanje SNMP BIND9 statističkog agenta v{version}',
    'log.agent_stopped' => 'SNMP BIND9 statistički agent je zaustavljen',
    'log.config_not_found' => 'Konfiguracijska datoteka nije pronađena: {file}',
    'log.config_parse_failed' => 'Neuspjelo raščlanjivanje konfiguracijske datoteke: {errors}',
    'log.invalid_stats_object' => 'Proslijeđen je neispravan objekt statistike',
    'log.oid_mappings_initialized' => 'Inicijalizirano {count} OID preslikavanja',
    'log.parsed_stats' => 'Raščlanjeno {count} statističkih podataka',
    'log.rndc_failed' => 'Neuspjelo izvršavanje naredbe rndc stats',
    'log.signal_shutdown' => 'Primljen signal {signal}, sigurno isključivanje...',
    'log.snmp_run_error' => 'Pogreška pri izvođenju SNMP agenta: {error}',
    'log.snmp_session_failed' => 'Neuspjelo stvaranje SNMP sesije: {error}',
    'log.snmp_started' => 'SNMP agent uspješno je pokrenut',
    'log.snmp_starting' => 'Pokretanje SNMP agenta na {addr}:{port}',
    'log.snmp_stopped' => 'SNMP agent je zaustavljen',
    'log.stats_collect_error' => 'Pogreška pri prikupljanju statistike: {error}',
    'log.stats_file_not_found' => 'Statistička datoteka nije pronađena: {file}',
    'log.stats_init_failed' => 'Neuspjela inicijalizacija sakupljača statistike',
    'log.stats_init_failed_detail' => 'Neuspjela inicijalizacija sakupljača statistike: {error}',
    'log.stats_read_failed' => 'Neuspjelo čitanje statističke datoteke: {error}',
    'log.stats_updated' => 'Statistika je osvježena',
);

sub messages {
    return \%MESSAGES;
}

1;

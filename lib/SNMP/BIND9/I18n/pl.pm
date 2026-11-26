# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::pl;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Zbiera statystyki z serwera DNS BIND9 za pomocą \'rndc stats\' i udostępnia je przez SNMP.',
    'cli.opt_config' => '  --config=FILE    Ścieżka do pliku konfiguracyjnego',
    'cli.opt_help' => '  --help           Krótka pomoc',
    'cli.opt_lang' => '  --lang=LOCALE    Kod języka komunikatów CLI (nadpisuje LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Pełna dokumentacja',
    'cli.opt_version' => '  --version        Wyświetl wersję',
    'cli.options_header' => 'Opcje:',
    'cli.usage_header' => 'Użycie: snmp_bind9_stats.pl [opcje]',
    'cli.version_line' => 'snmp_bind9_stats.pl wersja {version}',
    'log.agent_init_failed' => 'Nie udało się zainicjalizować agenta SNMP',
    'log.agent_init_failed_detail' => 'Nie udało się zainicjalizować agenta SNMP: {error}',
    'log.agent_starting' => 'Uruchamianie agenta statystyk BIND9 SNMP v{version}',
    'log.agent_stopped' => 'Zatrzymano agenta statystyk BIND9 SNMP',
    'log.config_not_found' => 'Nie znaleziono pliku konfiguracyjnego: {file}',
    'log.config_parse_failed' => 'Nie udało się przetworzyć pliku konfiguracyjnego: {errors}',
    'log.invalid_stats_object' => 'Podano nieprawidłowy obiekt statystyk',
    'log.oid_mappings_initialized' => 'Zainicjalizowano mapowania OID: {count}',
    'log.parsed_stats' => 'Przetworzono statystyki: {count}',
    'log.rndc_failed' => 'Nie udało się wykonać polecenia rndc stats',
    'log.signal_shutdown' => 'Odebrano sygnał {signal}, bezpieczne zamykanie...',
    'log.snmp_run_error' => 'Błąd uruchamiania agenta SNMP: {error}',
    'log.snmp_session_failed' => 'Nie udało się utworzyć sesji SNMP: {error}',
    'log.snmp_started' => 'Agent SNMP uruchomiony pomyślnie',
    'log.snmp_starting' => 'Uruchamianie agenta SNMP na {addr}:{port}',
    'log.snmp_stopped' => 'Agent SNMP zatrzymany',
    'log.stats_collect_error' => 'Błąd zbierania statystyk: {error}',
    'log.stats_file_not_found' => 'Nie znaleziono pliku statystyk: {file}',
    'log.stats_init_failed' => 'Nie udało się zainicjalizować kolektora statystyk',
    'log.stats_init_failed_detail' => 'Nie udało się zainicjalizować kolektora statystyk: {error}',
    'log.stats_read_failed' => 'Nie udało się odczytać pliku statystyk: {error}',
    'log.stats_updated' => 'Zaktualizowano statystyki',
);

sub messages {
    return \%MESSAGES;
}

1;

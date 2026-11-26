# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::de;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Erfasst Statistiken von einem BIND9-DNS-Server mittels \'rndc stats\' und stellt sie über SNMP bereit.',
    'cli.opt_config' => '  --config=FILE    Pfad zur Konfigurationsdatei',
    'cli.opt_help' => '  --help           Kurze Hilfemeldung',
    'cli.opt_lang' => '  --lang=LOCALE    Sprachcode für CLI-Meldungen (überschreibt LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Vollständige Dokumentation',
    'cli.opt_version' => '  --version        Version anzeigen',
    'cli.options_header' => 'Optionen:',
    'cli.usage_header' => 'Aufruf: snmp_bind9_stats.pl [Optionen]',
    'cli.version_line' => 'snmp_bind9_stats.pl Version {version}',
    'log.agent_init_failed' => 'Initialisierung des SNMP-Agenten fehlgeschlagen',
    'log.agent_init_failed_detail' => 'Initialisierung des SNMP-Agenten fehlgeschlagen: {error}',
    'log.agent_starting' => 'SNMP-BIND9-Statistik-Agent v{version} wird gestartet',
    'log.agent_stopped' => 'SNMP-BIND9-Statistik-Agent gestoppt',
    'log.config_not_found' => 'Konfigurationsdatei nicht gefunden: {file}',
    'log.config_parse_failed' => 'Fehler beim Parsen der Konfigurationsdatei: {errors}',
    'log.invalid_stats_object' => 'Ungültiges Statistikobjekt übergeben',
    'log.oid_mappings_initialized' => '{count} OID-Zuordnungen initialisiert',
    'log.parsed_stats' => '{count} Statistiken geparst',
    'log.rndc_failed' => 'Ausführung des Befehls rndc stats fehlgeschlagen',
    'log.signal_shutdown' => 'Signal {signal} empfangen, ordnungsgemäßes Beenden wird eingeleitet...',
    'log.snmp_run_error' => 'Fehler beim Ausführen des SNMP-Agenten: {error}',
    'log.snmp_session_failed' => 'SNMP-Sitzung konnte nicht erstellt werden: {error}',
    'log.snmp_started' => 'SNMP-Agent erfolgreich gestartet',
    'log.snmp_starting' => 'SNMP-Agent wird auf {addr}:{port} gestartet',
    'log.snmp_stopped' => 'SNMP-Agent gestoppt',
    'log.stats_collect_error' => 'Fehler beim Erfassen der Statistiken: {error}',
    'log.stats_file_not_found' => 'Statistikdatei nicht gefunden: {file}',
    'log.stats_init_failed' => 'Initialisierung des Statistik-Sammlers fehlgeschlagen',
    'log.stats_init_failed_detail' => 'Initialisierung des Statistik-Sammlers fehlgeschlagen: {error}',
    'log.stats_read_failed' => 'Statistikdatei konnte nicht gelesen werden: {error}',
    'log.stats_updated' => 'Statistiken aktualisiert',
);

sub messages {
    return \%MESSAGES;
}

1;

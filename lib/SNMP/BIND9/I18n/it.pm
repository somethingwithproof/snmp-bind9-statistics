# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::it;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Raccoglie le statistiche da un server DNS BIND9 usando \'rndc stats\' e le espone tramite SNMP.',
    'cli.opt_config' => '  --config=FILE    Percorso del file di configurazione',
    'cli.opt_help' => '  --help           Breve messaggio di aiuto',
    'cli.opt_lang' => '  --lang=LOCALE    Codice lingua per i messaggi CLI (sovrascrive LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Documentazione completa',
    'cli.opt_version' => '  --version        Mostra la versione',
    'cli.options_header' => 'Opzioni:',
    'cli.usage_header' => 'Uso: snmp_bind9_stats.pl [opzioni]',
    'cli.version_line' => 'snmp_bind9_stats.pl versione {version}',
    'log.agent_init_failed' => 'Impossibile inizializzare l\'agente SNMP',
    'log.agent_init_failed_detail' => 'Impossibile inizializzare l\'agente SNMP: {error}',
    'log.agent_starting' => 'Avvio dell\'agente SNMP BIND9 Statistics v{version}',
    'log.agent_stopped' => 'Agente SNMP BIND9 Statistics arrestato',
    'log.config_not_found' => 'File di configurazione non trovato: {file}',
    'log.config_parse_failed' => 'Impossibile analizzare il file di configurazione: {errors}',
    'log.invalid_stats_object' => 'Oggetto statistiche fornito non valido',
    'log.oid_mappings_initialized' => 'Inizializzate {count} mappature OID',
    'log.parsed_stats' => 'Analizzate {count} statistiche',
    'log.rndc_failed' => 'Impossibile eseguire il comando rndc stats',
    'log.signal_shutdown' => 'Ricevuto segnale {signal}, arresto ordinato in corso...',
    'log.snmp_run_error' => 'Errore durante l\'esecuzione dell\'agente SNMP: {error}',
    'log.snmp_session_failed' => 'Impossibile creare la sessione SNMP: {error}',
    'log.snmp_started' => 'Agente SNMP avviato correttamente',
    'log.snmp_starting' => 'Avvio dell\'agente SNMP su {addr}:{port}',
    'log.snmp_stopped' => 'Agente SNMP arrestato',
    'log.stats_collect_error' => 'Errore durante la raccolta delle statistiche: {error}',
    'log.stats_file_not_found' => 'File delle statistiche non trovato: {file}',
    'log.stats_init_failed' => 'Impossibile inizializzare il raccoglitore di statistiche',
    'log.stats_init_failed_detail' => 'Impossibile inizializzare il raccoglitore di statistiche: {error}',
    'log.stats_read_failed' => 'Impossibile leggere il file delle statistiche: {error}',
    'log.stats_updated' => 'Statistiche aggiornate',
);

sub messages {
    return \%MESSAGES;
}

1;

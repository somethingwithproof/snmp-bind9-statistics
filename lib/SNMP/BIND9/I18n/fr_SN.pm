# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::fr_SN;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Collecte les statistiques d\'un serveur DNS BIND9 via \'rndc stats\' et les expose par SNMP.',
    'cli.opt_config' => '  --config=FILE    Chemin du fichier de configuration',
    'cli.opt_help' => '  --help           Message d\'aide rapide',
    'cli.opt_lang' => '  --lang=LOCALE    Code de langue pour les messages CLI (remplace LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Documentation complète',
    'cli.opt_version' => '  --version        Afficher la version',
    'cli.options_header' => 'Options :',
    'cli.usage_header' => 'Utilisation : snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl version {version}',
    'log.agent_init_failed' => 'Échec de l\'initialisation de l\'agent SNMP',
    'log.agent_init_failed_detail' => 'Échec de l\'initialisation de l\'agent SNMP : {error}',
    'log.agent_starting' => 'Démarrage de l\'agent de statistiques SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Agent de statistiques SNMP BIND9 arrêté',
    'log.config_not_found' => 'Fichier de configuration introuvable : {file}',
    'log.config_parse_failed' => 'Échec de l\'analyse du fichier de configuration : {errors}',
    'log.invalid_stats_object' => 'Objet de statistiques fourni non valide',
    'log.oid_mappings_initialized' => '{count} correspondances OID initialisées',
    'log.parsed_stats' => '{count} statistiques analysées',
    'log.rndc_failed' => 'Échec de l\'exécution de la commande rndc stats',
    'log.signal_shutdown' => 'Signal {signal} reçu, arrêt propre en cours...',
    'log.snmp_run_error' => 'Erreur lors de l\'exécution de l\'agent SNMP : {error}',
    'log.snmp_session_failed' => 'Échec de la création de la session SNMP : {error}',
    'log.snmp_started' => 'Agent SNMP démarré avec succès',
    'log.snmp_starting' => 'Démarrage de l\'agent SNMP sur {addr}:{port}',
    'log.snmp_stopped' => 'Agent SNMP arrêté',
    'log.stats_collect_error' => 'Erreur lors de la collecte des statistiques : {error}',
    'log.stats_file_not_found' => 'Fichier de statistiques introuvable : {file}',
    'log.stats_init_failed' => 'Échec de l\'initialisation du collecteur de statistiques',
    'log.stats_init_failed_detail' => 'Échec de l\'initialisation du collecteur de statistiques : {error}',
    'log.stats_read_failed' => 'Échec de la lecture du fichier de statistiques : {error}',
    'log.stats_updated' => 'Statistiques mises à jour',
);

sub messages {
    return \%MESSAGES;
}

1;

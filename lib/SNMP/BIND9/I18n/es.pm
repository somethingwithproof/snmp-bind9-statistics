# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::es;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Recopila estadísticas de un servidor DNS BIND9 mediante \'rndc stats\' y las expone a través de SNMP.',
    'cli.opt_config' => '  --config=FILE    Ruta al archivo de configuración',
    'cli.opt_help' => '  --help           Mensaje de ayuda breve',
    'cli.opt_lang' => '  --lang=LOCALE    Código de idioma para mensajes de la CLI (anula LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Documentación completa',
    'cli.opt_version' => '  --version        Mostrar versión',
    'cli.options_header' => 'Opciones:',
    'cli.usage_header' => 'Uso: snmp_bind9_stats.pl [opciones]',
    'cli.version_line' => 'snmp_bind9_stats.pl versión {version}',
    'log.agent_init_failed' => 'Error al inicializar el agente SNMP',
    'log.agent_init_failed_detail' => 'Error al inicializar el agente SNMP: {error}',
    'log.agent_starting' => 'Iniciando agente SNMP de estadísticas de BIND9 v{version}',
    'log.agent_stopped' => 'Agente SNMP de estadísticas de BIND9 detenido',
    'log.config_not_found' => 'Archivo de configuración no encontrado: {file}',
    'log.config_parse_failed' => 'Error al analizar el archivo de configuración: {errors}',
    'log.invalid_stats_object' => 'Se proporcionó un objeto de estadísticas no válido',
    'log.oid_mappings_initialized' => 'Se inicializaron {count} asignaciones de OID',
    'log.parsed_stats' => 'Se analizaron {count} estadísticas',
    'log.rndc_failed' => 'Error al ejecutar el comando rndc stats',
    'log.signal_shutdown' => 'Se recibió la señal {signal}, cerrando ordenadamente...',
    'log.snmp_run_error' => 'Error al ejecutar el agente SNMP: {error}',
    'log.snmp_session_failed' => 'Error al crear la sesión SNMP: {error}',
    'log.snmp_started' => 'Agente SNMP iniciado correctamente',
    'log.snmp_starting' => 'Iniciando agente SNMP en {addr}:{port}',
    'log.snmp_stopped' => 'Agente SNMP detenido',
    'log.stats_collect_error' => 'Error al recopilar estadísticas: {error}',
    'log.stats_file_not_found' => 'Archivo de estadísticas no encontrado: {file}',
    'log.stats_init_failed' => 'Error al inicializar el recopilador de estadísticas',
    'log.stats_init_failed_detail' => 'Error al inicializar el recopilador de estadísticas: {error}',
    'log.stats_read_failed' => 'Error al leer el archivo de estadísticas: {error}',
    'log.stats_updated' => 'Estadísticas actualizadas',
);

sub messages {
    return \%MESSAGES;
}

1;

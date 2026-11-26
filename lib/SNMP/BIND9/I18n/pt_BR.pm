# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::pt_BR;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Coleta estatísticas de um servidor DNS BIND9 usando \'rndc stats\' e as expõe via SNMP.',
    'cli.opt_config' => '  --config=FILE    Caminho para o arquivo de configuração',
    'cli.opt_help' => '  --help           Mensagem breve de ajuda',
    'cli.opt_lang' => '  --lang=LOCALE    Código de idioma para mensagens da CLI (sobrescreve LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Documentação completa',
    'cli.opt_version' => '  --version        Mostrar versão',
    'cli.options_header' => 'Opções:',
    'cli.usage_header' => 'Uso: snmp_bind9_stats.pl [opções]',
    'cli.version_line' => 'snmp_bind9_stats.pl versão {version}',
    'log.agent_init_failed' => 'Falha ao inicializar o agente SNMP',
    'log.agent_init_failed_detail' => 'Falha ao inicializar o agente SNMP: {error}',
    'log.agent_starting' => 'Iniciando Agente de Estatísticas SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Agente de Estatísticas SNMP BIND9 parado',
    'log.config_not_found' => 'Arquivo de configuração não encontrado: {file}',
    'log.config_parse_failed' => 'Falha ao analisar o arquivo de configuração: {errors}',
    'log.invalid_stats_object' => 'Objeto de estatísticas inválido fornecido',
    'log.oid_mappings_initialized' => '{count} mapeamentos OID inicializados',
    'log.parsed_stats' => '{count} estatísticas analisadas',
    'log.rndc_failed' => 'Falha ao executar o comando rndc stats',
    'log.signal_shutdown' => 'Sinal {signal} recebido, encerrando normalmente...',
    'log.snmp_run_error' => 'Erro ao executar o agente SNMP: {error}',
    'log.snmp_session_failed' => 'Falha ao criar sessão SNMP: {error}',
    'log.snmp_started' => 'Agente SNMP iniciado com sucesso',
    'log.snmp_starting' => 'Iniciando agente SNMP em {addr}:{port}',
    'log.snmp_stopped' => 'Agente SNMP parado',
    'log.stats_collect_error' => 'Erro ao coletar estatísticas: {error}',
    'log.stats_file_not_found' => 'Arquivo de estatísticas não encontrado: {file}',
    'log.stats_init_failed' => 'Falha ao inicializar o coletor de estatísticas',
    'log.stats_init_failed_detail' => 'Falha ao inicializar o coletor de estatísticas: {error}',
    'log.stats_read_failed' => 'Falha ao ler o arquivo de estatísticas: {error}',
    'log.stats_updated' => 'Estatísticas atualizadas',
);

sub messages {
    return \%MESSAGES;
}

1;

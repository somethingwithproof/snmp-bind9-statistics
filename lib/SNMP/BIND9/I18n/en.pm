# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::en;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Collects statistics from a BIND9 DNS server using \'rndc stats\' and exposes them via SNMP.',
    'cli.opt_config' => '  --config=FILE    Path to configuration file',
    'cli.opt_help' => '  --help           Brief help message',
    'cli.opt_lang' => '  --lang=LOCALE    Language code for CLI messages (overrides LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Full documentation',
    'cli.opt_version' => '  --version        Show version',
    'cli.options_header' => 'Options:',
    'cli.usage_header' => 'Usage: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl version {version}',
    'log.agent_init_failed' => 'Failed to initialize SNMP agent',
    'log.agent_init_failed_detail' => 'Failed to initialize SNMP agent: {error}',
    'log.agent_starting' => 'Starting SNMP BIND9 Statistics Agent v{version}',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent stopped',
    'log.config_not_found' => 'Config file not found: {file}',
    'log.config_parse_failed' => 'Failed to parse config file: {errors}',
    'log.invalid_stats_object' => 'Invalid statistics object provided',
    'log.oid_mappings_initialized' => 'Initialized {count} OID mappings',
    'log.parsed_stats' => 'Parsed {count} statistics',
    'log.rndc_failed' => 'Failed to execute rndc stats command',
    'log.signal_shutdown' => 'Received signal {signal}, shutting down gracefully...',
    'log.snmp_run_error' => 'Error running SNMP agent: {error}',
    'log.snmp_session_failed' => 'Failed to create SNMP session: {error}',
    'log.snmp_started' => 'SNMP agent started successfully',
    'log.snmp_starting' => 'Starting SNMP agent on {addr}:{port}',
    'log.snmp_stopped' => 'SNMP agent stopped',
    'log.stats_collect_error' => 'Error collecting statistics: {error}',
    'log.stats_file_not_found' => 'Stats file not found: {file}',
    'log.stats_init_failed' => 'Failed to initialize statistics collector',
    'log.stats_init_failed_detail' => 'Failed to initialize statistics collector: {error}',
    'log.stats_read_failed' => 'Failed to read stats file: {error}',
    'log.stats_updated' => 'Updated statistics',
);

sub messages {
    return \%MESSAGES;
}

1;

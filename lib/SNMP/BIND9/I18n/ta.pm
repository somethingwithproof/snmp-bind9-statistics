# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ta;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' பயன்படுத்தி BIND9 DNS சேவையகத்திலிருந்து புள்ளிவிவரங்களைச் சேகரித்து SNMP வழியாக வழங்குகிறது.',
    'cli.opt_config' => '  --config=FILE    கட்டமைப்புக் கோப்பின் பாதை',
    'cli.opt_help' => '  --help           சுருக்கமான உதவிச் செய்தி',
    'cli.opt_lang' => '  --lang=LOCALE    CLI செய்திகளுக்கான மொழிக் குறியீடு (LC_ALL/LC_MESSAGES/LANG ஆகியவற்றை மேலெழுதும்)',
    'cli.opt_man' => '  --man            முழு ஆவணமாக்கல்',
    'cli.opt_version' => '  --version        பதிப்பைக் காட்டு',
    'cli.options_header' => 'விருப்பங்கள்:',
    'cli.usage_header' => 'பயன்பாடு: snmp_bind9_stats.pl [விருப்பங்கள்]',
    'cli.version_line' => 'snmp_bind9_stats.pl பதிப்பு {version}',
    'log.agent_init_failed' => 'SNMP முகவரைத் தொடங்குவதில் தோல்வி',
    'log.agent_init_failed_detail' => 'SNMP முகவரைத் தொடங்குவதில் தோல்வி: {error}',
    'log.agent_starting' => 'SNMP BIND9 புள்ளிவிவர முகவர் v{version} தொடங்கப்படுகிறது',
    'log.agent_stopped' => 'SNMP BIND9 புள்ளிவிவர முகவர் நிறுத்தப்பட்டது',
    'log.config_not_found' => 'கட்டமைப்புக் கோப்பு கிடைக்கவில்லை: {file}',
    'log.config_parse_failed' => 'கட்டமைப்புக் கோப்பைப் பகுப்பதில் தோல்வி: {errors}',
    'log.invalid_stats_object' => 'செல்லுபடியாகாத புள்ளிவிவரப் பொருள் வழங்கப்பட்டது',
    'log.oid_mappings_initialized' => '{count} OID இணைப்புகள் தொடங்கப்பட்டன',
    'log.parsed_stats' => '{count} புள்ளிவிவரங்கள் பகுக்கப்பட்டன',
    'log.rndc_failed' => 'rndc stats கட்டளையை இயக்குவதில் தோல்வி',
    'log.signal_shutdown' => '{signal} சமிக்ஞை பெறப்பட்டது, முறையாக நிறுத்தப்படுகிறது...',
    'log.snmp_run_error' => 'SNMP முகவரை இயக்குவதில் பிழை: {error}',
    'log.snmp_session_failed' => 'SNMP அமர்வை உருவாக்குவதில் தோல்வி: {error}',
    'log.snmp_started' => 'SNMP முகவர் வெற்றிகரமாகத் தொடங்கப்பட்டது',
    'log.snmp_starting' => '{addr}:{port} இல் SNMP முகவர் தொடங்கப்படுகிறது',
    'log.snmp_stopped' => 'SNMP முகவர் நிறுத்தப்பட்டது',
    'log.stats_collect_error' => 'புள்ளிவிவரங்களைச் சேகரிப்பதில் பிழை: {error}',
    'log.stats_file_not_found' => 'புள்ளிவிவரக் கோப்பு கிடைக்கவில்லை: {file}',
    'log.stats_init_failed' => 'புள்ளிவிவரச் சேகரிப்பானைத் தொடங்குவதில் தோல்வி',
    'log.stats_init_failed_detail' => 'புள்ளிவிவரச் சேகரிப்பானைத் தொடங்குவதில் தோல்வி: {error}',
    'log.stats_read_failed' => 'புள்ளிவிவரக் கோப்பைப் படிப்பதில் தோல்வி: {error}',
    'log.stats_updated' => 'புள்ளிவிவரங்கள் புதுப்பிக்கப்பட்டன',
);

sub messages {
    return \%MESSAGES;
}

1;

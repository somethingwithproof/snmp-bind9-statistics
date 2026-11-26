# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::am_ET;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' ን በመጠቀም ከBIND9 DNS አገልጋይ ስታቲስቲክስ ይሰበስባል እና በSNMP በኩል ያቀርባቸዋል።',
    'cli.opt_config' => '  --config=FILE    ወደ ውቅር ፋይሉ የሚወስድ መንገድ',
    'cli.opt_help' => '  --help           አጭር የእገዛ መልዕክት',
    'cli.opt_lang' => '  --lang=LOCALE    ለCLI መልዕክቶች የቋንቋ ኮድ (LC_ALL/LC_MESSAGES/LANG ን ይተካል)',
    'cli.opt_man' => '  --man            ሙሉ ሰነድ',
    'cli.opt_version' => '  --version        ስሪቱን አሳይ',
    'cli.options_header' => 'አማራጮች:',
    'cli.usage_header' => 'አጠቃቀም: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl ስሪት {version}',
    'log.agent_init_failed' => 'የSNMP ወኪልን ማስጀመር አልተቻለም',
    'log.agent_init_failed_detail' => 'የSNMP ወኪልን ማስጀመር አልተቻለም: {error}',
    'log.agent_starting' => 'የSNMP BIND9 ስታቲስቲክስ ወኪል v{version} በመጀመር ላይ',
    'log.agent_stopped' => 'የSNMP BIND9 ስታቲስቲክስ ወኪል ቆሟል',
    'log.config_not_found' => 'የውቅር ፋይል አልተገኘም: {file}',
    'log.config_parse_failed' => 'የውቅር ፋይሉን መተንተን አልተቻለም: {errors}',
    'log.invalid_stats_object' => 'ልክ ያልሆነ የስታቲስቲክስ ነገር ቀርቧል',
    'log.oid_mappings_initialized' => '{count} የOID ጥምረቶች ተጀምረዋል',
    'log.parsed_stats' => '{count} ስታቲስቲክስ ተተንትነዋል',
    'log.rndc_failed' => 'የrndc stats ትዕዛዝን ማስኬድ አልተቻለም',
    'log.signal_shutdown' => 'ምልክት {signal} ደርሷል፣ በአግባቡ በመዝጋት ላይ...',
    'log.snmp_run_error' => 'የSNMP ወኪልን በማስኬድ ላይ ስህተት ተፈጥሯል: {error}',
    'log.snmp_session_failed' => 'የSNMP ክፍለ ጊዜ መፍጠር አልተቻለም: {error}',
    'log.snmp_started' => 'የSNMP ወኪል በተሳካ ሁኔታ ተጀምሯል',
    'log.snmp_starting' => 'የSNMP ወኪል በ{addr}:{port} ላይ በመጀመር ላይ',
    'log.snmp_stopped' => 'የSNMP ወኪል ቆሟል',
    'log.stats_collect_error' => 'ስታቲስቲክስ በመሰብሰብ ላይ ስህተት ተፈጥሯል: {error}',
    'log.stats_file_not_found' => 'የስታቲስቲክስ ፋይል አልተገኘም: {file}',
    'log.stats_init_failed' => 'የስታቲስቲክስ ሰብሳቢን ማስጀመር አልተቻለም',
    'log.stats_init_failed_detail' => 'የስታቲስቲክስ ሰብሳቢን ማስጀመር አልተቻለም: {error}',
    'log.stats_read_failed' => 'የስታቲስቲክስ ፋይሉን ማንበብ አልተቻለም: {error}',
    'log.stats_updated' => 'ስታቲስቲክስ ተዘምኗል',
);

sub messages {
    return \%MESSAGES;
}

1;

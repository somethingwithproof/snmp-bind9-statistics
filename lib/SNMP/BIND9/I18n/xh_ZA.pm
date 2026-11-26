# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::xh_ZA;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Iqokelela iinkcukacha-manani kwiseva ye-DNS ye-BIND9 isebenzisa \'rndc stats\' kwaye izibonise nge-SNMP.',
    'cli.opt_config' => '  --config=FILE    Umendo oya kwifayile yoqwalaselo',
    'cli.opt_help' => '  --help           Umyalezo omfutshane woncedo',
    'cli.opt_lang' => '  --lang=LOCALE    Ikhowudi yolwimi yemiyalezo ye-CLI (igqitha i-LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Amaxwebhu apheleleyo',
    'cli.opt_version' => '  --version        Bonisa uguqulelo',
    'cli.options_header' => 'Iinketho:',
    'cli.usage_header' => 'Ukusetyenziswa: snmp_bind9_stats.pl [iinketho]',
    'cli.version_line' => 'snmp_bind9_stats.pl uguqulelo {version}',
    'log.agent_init_failed' => 'Ayiphumelelanga ukuqalisa umeli we-SNMP',
    'log.agent_init_failed_detail' => 'Ayiphumelelanga ukuqalisa umeli we-SNMP: {error}',
    'log.agent_starting' => 'Iqalisa uMeli weeNkcukacha-manani we-SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Umeli weeNkcukacha-manani we-SNMP BIND9 umisiwe',
    'log.config_not_found' => 'Ifayile yoqwalaselo ayifumanekanga: {file}',
    'log.config_parse_failed' => 'Ayiphumelelanga ukucazulula ifayile yoqwalaselo: {errors}',
    'log.invalid_stats_object' => 'Kunikwe into yeenkcukacha-manani engasebenziyo',
    'log.oid_mappings_initialized' => 'Kuqaliswe imidibaniso ye-OID eyi-{count}',
    'log.parsed_stats' => 'Kucazululwe iinkcukacha-manani eziyi-{count}',
    'log.rndc_failed' => 'Ayiphumelelanga ukuqhuba umyalelo othi rndc stats',
    'log.signal_shutdown' => 'Kufunyenwe isiginali {signal}, iyacima ngokucokisekileyo...',
    'log.snmp_run_error' => 'Impazamo ekuqhubeni umeli we-SNMP: {error}',
    'log.snmp_session_failed' => 'Ayiphumelelanga ukwenza iseshoni ye-SNMP: {error}',
    'log.snmp_started' => 'Umeli we-SNMP uqaliswe ngempumelelo',
    'log.snmp_starting' => 'Iqalisa umeli we-SNMP ku-{addr}:{port}',
    'log.snmp_stopped' => 'Umeli we-SNMP umisiwe',
    'log.stats_collect_error' => 'Impazamo ekuqokeleleni iinkcukacha-manani: {error}',
    'log.stats_file_not_found' => 'Ifayile yeenkcukacha-manani ayifumanekanga: {file}',
    'log.stats_init_failed' => 'Ayiphumelelanga ukuqalisa umqokeleli weenkcukacha-manani',
    'log.stats_init_failed_detail' => 'Ayiphumelelanga ukuqalisa umqokeleli weenkcukacha-manani: {error}',
    'log.stats_read_failed' => 'Ayiphumelelanga ukufunda ifayile yeenkcukacha-manani: {error}',
    'log.stats_updated' => 'Iinkcukacha-manani zihlaziyiwe',
);

sub messages {
    return \%MESSAGES;
}

1;

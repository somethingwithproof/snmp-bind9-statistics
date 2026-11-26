# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ur;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' استعمال کرتے ہوئے BIND9 DNS سرور سے اعداد و شمار جمع کرتا ہے اور انہیں SNMP کے ذریعے فراہم کرتا ہے۔',
    'cli.opt_config' => '  --config=FILE    کنفیگریشن فائل کا راستہ',
    'cli.opt_help' => '  --help           مختصر مدد کا پیغام',
    'cli.opt_lang' => '  --lang=LOCALE    CLI پیغامات کے لیے زبان کا کوڈ (LC_ALL/LC_MESSAGES/LANG کو منسوخ کرتا ہے)',
    'cli.opt_man' => '  --man            مکمل دستاویزات',
    'cli.opt_version' => '  --version        ورژن دکھائیں',
    'cli.options_header' => 'اختیارات:',
    'cli.usage_header' => 'استعمال: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl ورژن {version}',
    'log.agent_init_failed' => 'SNMP ایجنٹ شروع (initialize) کرنے میں ناکامی',
    'log.agent_init_failed_detail' => 'SNMP ایجنٹ شروع (initialize) کرنے میں ناکامی: {error}',
    'log.agent_starting' => 'SNMP BIND9 Statistics Agent v{version} شروع کیا جا رہا ہے',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent رک گیا',
    'log.config_not_found' => 'کنفیگریشن فائل نہیں ملی: {file}',
    'log.config_parse_failed' => 'کنفیگریشن فائل کا تجزیہ ناکام ہو گیا: {errors}',
    'log.invalid_stats_object' => 'غلط اعداد و شمار کا آبجیکٹ فراہم کیا گیا',
    'log.oid_mappings_initialized' => '{count} OID میپنگز شروع کر دی گئیں',
    'log.parsed_stats' => '{count} اعداد و شمار کا تجزیہ مکمل ہوا',
    'log.rndc_failed' => 'rndc stats کمانڈ چلانے میں ناکامی',
    'log.signal_shutdown' => 'سگنل {signal} موصول ہوا، محفوظ طریقے سے بند کیا جا رہا ہے...',
    'log.snmp_run_error' => 'SNMP ایجنٹ چلانے میں خرابی: {error}',
    'log.snmp_session_failed' => 'SNMP سیشن بنانے میں ناکامی: {error}',
    'log.snmp_started' => 'SNMP ایجنٹ کامیابی سے شروع ہو گیا',
    'log.snmp_starting' => '{addr}:{port} پر SNMP ایجنٹ شروع کیا جا رہا ہے',
    'log.snmp_stopped' => 'SNMP ایجنٹ رک گیا',
    'log.stats_collect_error' => 'اعداد و شمار جمع کرنے میں خرابی: {error}',
    'log.stats_file_not_found' => 'اعداد و شمار کی فائل نہیں ملی: {file}',
    'log.stats_init_failed' => 'اعداد و شمار جمع کرنے والا شروع کرنے میں ناکامی',
    'log.stats_init_failed_detail' => 'اعداد و شمار جمع کرنے والا شروع کرنے میں ناکامی: {error}',
    'log.stats_read_failed' => 'اعداد و شمار کی فائل پڑھنے میں ناکامی: {error}',
    'log.stats_updated' => 'اعداد و شمار اپ ڈیٹ ہو گئے',
);

sub messages {
    return \%MESSAGES;
}

1;

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ar_MA;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'كيجمع الإحصائيات من سيرفر BIND9 DNS باستعمال \'rndc stats\' وكيعرضهم عبر SNMP.',
    'cli.opt_config' => '  --config=FILE    المسار ديال ملف الإعدادات',
    'cli.opt_help' => '  --help           رسالة مساعدة مختصرة',
    'cli.opt_lang' => '  --lang=LOCALE    كود اللغة ديال رسائل CLI (كيتغلب على LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            التوثيق الكامل',
    'cli.opt_version' => '  --version        وري الإصدار',
    'cli.options_header' => 'الخيارات:',
    'cli.usage_header' => 'الاستعمال: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl الإصدار {version}',
    'log.agent_init_failed' => 'فشل تهيئة وكيل SNMP',
    'log.agent_init_failed_detail' => 'فشل تهيئة وكيل SNMP: {error}',
    'log.agent_starting' => 'كنبداو وكيل إحصائيات SNMP BIND9 الإصدار v{version}',
    'log.agent_stopped' => 'وقف وكيل إحصائيات SNMP BIND9',
    'log.config_not_found' => 'ملف الإعدادات ما تلقاش: {file}',
    'log.config_parse_failed' => 'ما قدرناش نحللو ملف الإعدادات: {errors}',
    'log.invalid_stats_object' => 'كائن الإحصائيات لي تعطي ماشي صالح',
    'log.oid_mappings_initialized' => 'تهيؤو {count} ربط ديال OID',
    'log.parsed_stats' => 'تحللو {count} إحصائية',
    'log.rndc_failed' => 'فشل تنفيذ الأمر rndc stats',
    'log.signal_shutdown' => 'وصلات الإشارة {signal}، غادي نوقفو بشكل آمن...',
    'log.snmp_run_error' => 'خطأ فتشغيل وكيل SNMP: {error}',
    'log.snmp_session_failed' => 'ما قدرناش ننشؤو جلسة SNMP: {error}',
    'log.snmp_started' => 'وكيل SNMP خدم بنجاح',
    'log.snmp_starting' => 'كنبداو وكيل SNMP على {addr}:{port}',
    'log.snmp_stopped' => 'وكيل SNMP وقف',
    'log.stats_collect_error' => 'خطأ فجمع الإحصائيات: {error}',
    'log.stats_file_not_found' => 'ملف الإحصائيات ما تلقاش: {file}',
    'log.stats_init_failed' => 'فشل تهيئة جامع الإحصائيات',
    'log.stats_init_failed_detail' => 'فشل تهيئة جامع الإحصائيات: {error}',
    'log.stats_read_failed' => 'ما قدرناش نقراو ملف الإحصائيات: {error}',
    'log.stats_updated' => 'تحدثو الإحصائيات',
);

sub messages {
    return \%MESSAGES;
}

1;

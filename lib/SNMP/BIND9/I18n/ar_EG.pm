# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ar_EG;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'بيجمّع إحصائيات من سيرفر BIND9 DNS باستخدام \'rndc stats\' ويعرضها عن طريق SNMP.',
    'cli.opt_config' => '  --config=FILE    مسار ملف الإعدادات',
    'cli.opt_help' => '  --help           رسالة مساعدة مختصرة',
    'cli.opt_lang' => '  --lang=LOCALE    كود اللغة لرسايل CLI (بيلغي إعدادات LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            الدليل الكامل',
    'cli.opt_version' => '  --version        اعرض رقم الإصدار',
    'cli.options_header' => 'الخيارات:',
    'cli.usage_header' => 'الاستخدام: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl الإصدار {version}',
    'log.agent_init_failed' => 'فشل تهيئة وكيل SNMP',
    'log.agent_init_failed_detail' => 'فشل تهيئة وكيل SNMP: {error}',
    'log.agent_starting' => 'بنشغّل وكيل إحصائيات SNMP BIND9 الإصدار v{version}',
    'log.agent_stopped' => 'وكيل إحصائيات SNMP BIND9 وقف',
    'log.config_not_found' => 'ملف الإعدادات مش موجود: {file}',
    'log.config_parse_failed' => 'فشل تحليل ملف الإعدادات: {errors}',
    'log.invalid_stats_object' => 'كائن الإحصائيات المتبعت مش سليم',
    'log.oid_mappings_initialized' => 'اتعملت تهيئة لـ {count} ربط OID',
    'log.parsed_stats' => 'اتحللت {count} إحصائية',
    'log.rndc_failed' => 'فشل تنفيذ أمر rndc stats',
    'log.signal_shutdown' => 'وصلت إشارة {signal}، بنقفل بهدوء دلوقتي...',
    'log.snmp_run_error' => 'غلط أثناء تشغيل وكيل SNMP: {error}',
    'log.snmp_session_failed' => 'فشل إنشاء جلسة SNMP: {error}',
    'log.snmp_started' => 'وكيل SNMP اشتغل بنجاح',
    'log.snmp_starting' => 'بنشغّل وكيل SNMP على {addr}:{port}',
    'log.snmp_stopped' => 'وكيل SNMP وقف',
    'log.stats_collect_error' => 'غلط أثناء تجميع الإحصائيات: {error}',
    'log.stats_file_not_found' => 'ملف الإحصائيات مش موجود: {file}',
    'log.stats_init_failed' => 'فشل تهيئة مجمّع الإحصائيات',
    'log.stats_init_failed_detail' => 'فشل تهيئة مجمّع الإحصائيات: {error}',
    'log.stats_read_failed' => 'فشل قراءة ملف الإحصائيات: {error}',
    'log.stats_updated' => 'الإحصائيات اتحدّثت',
);

sub messages {
    return \%MESSAGES;
}

1;

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ar;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'يجمع الإحصاءات من خادم DNS من نوع BIND9 باستخدام \'rndc stats\' ويعرضها عبر SNMP.',
    'cli.opt_config' => '  --config=FILE    مسار ملف الإعدادات',
    'cli.opt_help' => '  --help           رسالة مساعدة مختصرة',
    'cli.opt_lang' => '  --lang=LOCALE    رمز اللغة لرسائل واجهة سطر الأوامر (يتجاوز LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            التوثيق الكامل',
    'cli.opt_version' => '  --version        عرض رقم الإصدار',
    'cli.options_header' => 'الخيارات:',
    'cli.usage_header' => 'الاستخدام: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl الإصدار {version}',
    'log.agent_init_failed' => 'فشلت تهيئة وكيل SNMP',
    'log.agent_init_failed_detail' => 'فشلت تهيئة وكيل SNMP: {error}',
    'log.agent_starting' => 'جارٍ تشغيل وكيل إحصاءات BIND9 عبر SNMP الإصدار v{version}',
    'log.agent_stopped' => 'توقف وكيل إحصاءات BIND9 عبر SNMP',
    'log.config_not_found' => 'ملف الإعدادات غير موجود: {file}',
    'log.config_parse_failed' => 'فشل تحليل ملف الإعدادات: {errors}',
    'log.invalid_stats_object' => 'تم تقديم كائن إحصاءات غير صالح',
    'log.oid_mappings_initialized' => 'تمت تهيئة {count} تعيينات OID',
    'log.parsed_stats' => 'تم تحليل {count} إحصاءات',
    'log.rndc_failed' => 'فشل تنفيذ الأمر rndc stats',
    'log.signal_shutdown' => 'تم استلام الإشارة {signal}، جارٍ إيقاف التشغيل بسلاسة...',
    'log.snmp_run_error' => 'خطأ أثناء تشغيل وكيل SNMP: {error}',
    'log.snmp_session_failed' => 'فشل إنشاء جلسة SNMP: {error}',
    'log.snmp_started' => 'تم تشغيل وكيل SNMP بنجاح',
    'log.snmp_starting' => 'جارٍ تشغيل وكيل SNMP على {addr}:{port}',
    'log.snmp_stopped' => 'توقف وكيل SNMP',
    'log.stats_collect_error' => 'خطأ أثناء جمع الإحصاءات: {error}',
    'log.stats_file_not_found' => 'ملف الإحصاءات غير موجود: {file}',
    'log.stats_init_failed' => 'فشلت تهيئة جامع الإحصاءات',
    'log.stats_init_failed_detail' => 'فشلت تهيئة جامع الإحصاءات: {error}',
    'log.stats_read_failed' => 'فشلت قراءة ملف الإحصاءات: {error}',
    'log.stats_updated' => 'تم تحديث الإحصاءات',
);

sub messages {
    return \%MESSAGES;
}

1;

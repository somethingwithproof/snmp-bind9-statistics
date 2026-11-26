# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::fa;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'آمار را از سرور DNS نوع BIND9 با استفاده از \'rndc stats\' جمع‌آوری کرده و از طریق SNMP ارائه می‌دهد.',
    'cli.opt_config' => '  --config=FILE    مسیر فایل پیکربندی',
    'cli.opt_help' => '  --help           پیام راهنمای کوتاه',
    'cli.opt_lang' => '  --lang=LOCALE    کد زبان برای پیام‌های CLI (جایگزین LC_ALL/LC_MESSAGES/LANG می‌شود)',
    'cli.opt_man' => '  --man            مستندات کامل',
    'cli.opt_version' => '  --version        نمایش نسخه',
    'cli.options_header' => 'گزینه‌ها:',
    'cli.usage_header' => 'نحوه استفاده: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl نسخه {version}',
    'log.agent_init_failed' => 'مقداردهی اولیه عامل SNMP ناموفق بود',
    'log.agent_init_failed_detail' => 'مقداردهی اولیه عامل SNMP ناموفق بود: {error}',
    'log.agent_starting' => 'در حال راه‌اندازی عامل آمار SNMP BIND9 v{version}',
    'log.agent_stopped' => 'عامل آمار SNMP BIND9 متوقف شد',
    'log.config_not_found' => 'فایل پیکربندی یافت نشد: {file}',
    'log.config_parse_failed' => 'تجزیه فایل پیکربندی ناموفق بود: {errors}',
    'log.invalid_stats_object' => 'شیء آمار نامعتبر ارائه شده است',
    'log.oid_mappings_initialized' => '{count} نگاشت OID مقداردهی اولیه شد',
    'log.parsed_stats' => '{count} مورد آمار تجزیه شد',
    'log.rndc_failed' => 'اجرای دستور rndc stats ناموفق بود',
    'log.signal_shutdown' => 'سیگنال {signal} دریافت شد، در حال خاموش شدن ایمن...',
    'log.snmp_run_error' => 'خطا در اجرای عامل SNMP: {error}',
    'log.snmp_session_failed' => 'ایجاد نشست SNMP ناموفق بود: {error}',
    'log.snmp_started' => 'عامل SNMP با موفقیت راه‌اندازی شد',
    'log.snmp_starting' => 'در حال راه‌اندازی عامل SNMP روی {addr}:{port}',
    'log.snmp_stopped' => 'عامل SNMP متوقف شد',
    'log.stats_collect_error' => 'خطا در جمع‌آوری آمار: {error}',
    'log.stats_file_not_found' => 'فایل آمار یافت نشد: {file}',
    'log.stats_init_failed' => 'مقداردهی اولیه جمع‌آوری‌کننده آمار ناموفق بود',
    'log.stats_init_failed_detail' => 'مقداردهی اولیه جمع‌آوری‌کننده آمار ناموفق بود: {error}',
    'log.stats_read_failed' => 'خواندن فایل آمار ناموفق بود: {error}',
    'log.stats_updated' => 'آمار به‌روزرسانی شد',
);

sub messages {
    return \%MESSAGES;
}

1;

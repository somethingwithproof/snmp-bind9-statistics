# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::bn;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' ব্যবহার করে একটি BIND9 DNS সার্ভার থেকে পরিসংখ্যান সংগ্রহ করে এবং SNMP-এর মাধ্যমে প্রকাশ করে।',
    'cli.opt_config' => '  --config=FILE    কনফিগারেশন ফাইলের পাথ',
    'cli.opt_help' => '  --help           সংক্ষিপ্ত সহায়তা বার্তা',
    'cli.opt_lang' => '  --lang=LOCALE    CLI বার্তার জন্য ভাষা কোড (LC_ALL/LC_MESSAGES/LANG ওভাররাইড করে)',
    'cli.opt_man' => '  --man            সম্পূর্ণ ডকুমেন্টেশন',
    'cli.opt_version' => '  --version        সংস্করণ দেখান',
    'cli.options_header' => 'বিকল্পসমূহ:',
    'cli.usage_header' => 'ব্যবহারবিধি: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl সংস্করণ {version}',
    'log.agent_init_failed' => 'SNMP এজেন্ট আরম্ভ করতে ব্যর্থ হয়েছে',
    'log.agent_init_failed_detail' => 'SNMP এজেন্ট আরম্ভ করতে ব্যর্থ হয়েছে: {error}',
    'log.agent_starting' => 'SNMP BIND9 Statistics Agent v{version} চালু করা হচ্ছে',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent বন্ধ হয়েছে',
    'log.config_not_found' => 'কনফিগারেশন ফাইল পাওয়া যায়নি: {file}',
    'log.config_parse_failed' => 'কনফিগারেশন ফাইল পার্স করতে ব্যর্থ হয়েছে: {errors}',
    'log.invalid_stats_object' => 'অবৈধ পরিসংখ্যান অবজেক্ট প্রদান করা হয়েছে',
    'log.oid_mappings_initialized' => '{count}টি OID ম্যাপিং আরম্ভ করা হয়েছে',
    'log.parsed_stats' => '{count}টি পরিসংখ্যান পার্স করা হয়েছে',
    'log.rndc_failed' => 'rndc stats কমান্ড চালাতে ব্যর্থ হয়েছে',
    'log.signal_shutdown' => '{signal} সিগন্যাল পাওয়া গেছে, সুশৃঙ্খলভাবে বন্ধ করা হচ্ছে...',
    'log.snmp_run_error' => 'SNMP এজেন্ট চালাতে ত্রুটি: {error}',
    'log.snmp_session_failed' => 'SNMP সেশন তৈরি করতে ব্যর্থ হয়েছে: {error}',
    'log.snmp_started' => 'SNMP এজেন্ট সফলভাবে চালু হয়েছে',
    'log.snmp_starting' => '{addr}:{port}-এ SNMP এজেন্ট চালু করা হচ্ছে',
    'log.snmp_stopped' => 'SNMP এজেন্ট বন্ধ হয়েছে',
    'log.stats_collect_error' => 'পরিসংখ্যান সংগ্রহ করতে ত্রুটি: {error}',
    'log.stats_file_not_found' => 'পরিসংখ্যান ফাইল পাওয়া যায়নি: {file}',
    'log.stats_init_failed' => 'পরিসংখ্যান সংগ্রাহক আরম্ভ করতে ব্যর্থ হয়েছে',
    'log.stats_init_failed_detail' => 'পরিসংখ্যান সংগ্রাহক আরম্ভ করতে ব্যর্থ হয়েছে: {error}',
    'log.stats_read_failed' => 'পরিসংখ্যান ফাইল পড়তে ব্যর্থ হয়েছে: {error}',
    'log.stats_updated' => 'পরিসংখ্যান আপডেট করা হয়েছে',
);

sub messages {
    return \%MESSAGES;
}

1;

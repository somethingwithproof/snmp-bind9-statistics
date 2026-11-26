# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::th;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'เก็บรวบรวมสถิติจากเซิร์ฟเวอร์ DNS BIND9 โดยใช้ \'rndc stats\' และเผยแพร่ผ่าน SNMP',
    'cli.opt_config' => '  --config=FILE    พาธไปยังไฟล์กำหนดค่า',
    'cli.opt_help' => '  --help           ข้อความช่วยเหลือแบบย่อ',
    'cli.opt_lang' => '  --lang=LOCALE    รหัสภาษาสำหรับข้อความ CLI (แทนที่ค่า LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            เอกสารคู่มือฉบับเต็ม',
    'cli.opt_version' => '  --version        แสดงเวอร์ชัน',
    'cli.options_header' => 'ตัวเลือก:',
    'cli.usage_header' => 'การใช้งาน: snmp_bind9_stats.pl [ตัวเลือก]',
    'cli.version_line' => 'snmp_bind9_stats.pl เวอร์ชัน {version}',
    'log.agent_init_failed' => 'เริ่มต้นเอเจนต์ SNMP ไม่สำเร็จ',
    'log.agent_init_failed_detail' => 'เริ่มต้นเอเจนต์ SNMP ไม่สำเร็จ: {error}',
    'log.agent_starting' => 'กำลังเริ่ม SNMP BIND9 Statistics Agent v{version}',
    'log.agent_stopped' => 'หยุดการทำงานของ SNMP BIND9 Statistics Agent แล้ว',
    'log.config_not_found' => 'ไม่พบไฟล์กำหนดค่า: {file}',
    'log.config_parse_failed' => 'แยกวิเคราะห์ไฟล์กำหนดค่าไม่สำเร็จ: {errors}',
    'log.invalid_stats_object' => 'อ็อบเจกต์สถิติที่ระบุไม่ถูกต้อง',
    'log.oid_mappings_initialized' => 'เริ่มต้นการจับคู่ OID แล้ว {count} รายการ',
    'log.parsed_stats' => 'แยกวิเคราะห์สถิติแล้ว {count} รายการ',
    'log.rndc_failed' => 'รันคำสั่ง rndc stats ไม่สำเร็จ',
    'log.signal_shutdown' => 'ได้รับสัญญาณ {signal} กำลังปิดการทำงานอย่างเรียบร้อย...',
    'log.snmp_run_error' => 'เกิดข้อผิดพลาดขณะรันเอเจนต์ SNMP: {error}',
    'log.snmp_session_failed' => 'สร้างเซสชัน SNMP ไม่สำเร็จ: {error}',
    'log.snmp_started' => 'เริ่มเอเจนต์ SNMP สำเร็จแล้ว',
    'log.snmp_starting' => 'กำลังเริ่มเอเจนต์ SNMP ที่ {addr}:{port}',
    'log.snmp_stopped' => 'หยุดเอเจนต์ SNMP แล้ว',
    'log.stats_collect_error' => 'เกิดข้อผิดพลาดขณะเก็บรวบรวมสถิติ: {error}',
    'log.stats_file_not_found' => 'ไม่พบไฟล์สถิติ: {file}',
    'log.stats_init_failed' => 'เริ่มต้นตัวเก็บรวบรวมสถิติไม่สำเร็จ',
    'log.stats_init_failed_detail' => 'เริ่มต้นตัวเก็บรวบรวมสถิติไม่สำเร็จ: {error}',
    'log.stats_read_failed' => 'อ่านไฟล์สถิติไม่สำเร็จ: {error}',
    'log.stats_updated' => 'อัปเดตสถิติแล้ว',
);

sub messages {
    return \%MESSAGES;
}

1;

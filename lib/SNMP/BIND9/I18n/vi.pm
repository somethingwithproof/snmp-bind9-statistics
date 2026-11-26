# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::vi;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Thu thập số liệu thống kê từ máy chủ DNS BIND9 bằng \'rndc stats\' và cung cấp qua SNMP.',
    'cli.opt_config' => '  --config=FILE    Đường dẫn đến tệp cấu hình',
    'cli.opt_help' => '  --help           Thông báo trợ giúp ngắn gọn',
    'cli.opt_lang' => '  --lang=LOCALE    Mã ngôn ngữ cho thông báo CLI (ghi đè LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Tài liệu đầy đủ',
    'cli.opt_version' => '  --version        Hiển thị phiên bản',
    'cli.options_header' => 'Tùy chọn:',
    'cli.usage_header' => 'Cách dùng: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl phiên bản {version}',
    'log.agent_init_failed' => 'Khởi tạo SNMP agent thất bại',
    'log.agent_init_failed_detail' => 'Khởi tạo SNMP agent thất bại: {error}',
    'log.agent_starting' => 'Đang khởi động SNMP BIND9 Statistics Agent v{version}',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent đã dừng',
    'log.config_not_found' => 'Không tìm thấy tệp cấu hình: {file}',
    'log.config_parse_failed' => 'Phân tích tệp cấu hình thất bại: {errors}',
    'log.invalid_stats_object' => 'Đối tượng thống kê được cung cấp không hợp lệ',
    'log.oid_mappings_initialized' => 'Đã khởi tạo {count} ánh xạ OID',
    'log.parsed_stats' => 'Đã phân tích {count} số liệu thống kê',
    'log.rndc_failed' => 'Thực thi lệnh rndc stats thất bại',
    'log.signal_shutdown' => 'Đã nhận tín hiệu {signal}, đang tắt an toàn...',
    'log.snmp_run_error' => 'Lỗi khi chạy SNMP agent: {error}',
    'log.snmp_session_failed' => 'Tạo phiên SNMP thất bại: {error}',
    'log.snmp_started' => 'Khởi động SNMP agent thành công',
    'log.snmp_starting' => 'Đang khởi động SNMP agent trên {addr}:{port}',
    'log.snmp_stopped' => 'SNMP agent đã dừng',
    'log.stats_collect_error' => 'Lỗi khi thu thập số liệu thống kê: {error}',
    'log.stats_file_not_found' => 'Không tìm thấy tệp thống kê: {file}',
    'log.stats_init_failed' => 'Khởi tạo trình thu thập số liệu thống kê thất bại',
    'log.stats_init_failed_detail' => 'Khởi tạo trình thu thập số liệu thống kê thất bại: {error}',
    'log.stats_read_failed' => 'Đọc tệp thống kê thất bại: {error}',
    'log.stats_updated' => 'Đã cập nhật số liệu thống kê',
);

sub messages {
    return \%MESSAGES;
}

1;

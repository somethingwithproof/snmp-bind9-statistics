# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::zh_CN;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '使用 \'rndc stats\' 收集 BIND9 DNS 服务器的统计信息，并通过 SNMP 对外提供。',
    'cli.opt_config' => '  --config=FILE    配置文件路径',
    'cli.opt_help' => '  --help           简要帮助信息',
    'cli.opt_lang' => '  --lang=LOCALE    CLI 消息的语言代码（覆盖 LC_ALL/LC_MESSAGES/LANG）',
    'cli.opt_man' => '  --man            完整文档',
    'cli.opt_version' => '  --version        显示版本信息',
    'cli.options_header' => '选项：',
    'cli.usage_header' => '用法：snmp_bind9_stats.pl [选项]',
    'cli.version_line' => 'snmp_bind9_stats.pl 版本 {version}',
    'log.agent_init_failed' => '初始化 SNMP 代理失败',
    'log.agent_init_failed_detail' => '初始化 SNMP 代理失败：{error}',
    'log.agent_starting' => '正在启动 SNMP BIND9 统计代理 v{version}',
    'log.agent_stopped' => 'SNMP BIND9 统计代理已停止',
    'log.config_not_found' => '未找到配置文件：{file}',
    'log.config_parse_failed' => '解析配置文件失败：{errors}',
    'log.invalid_stats_object' => '提供的统计对象无效',
    'log.oid_mappings_initialized' => '已初始化 {count} 条 OID 映射',
    'log.parsed_stats' => '已解析 {count} 项统计数据',
    'log.rndc_failed' => '执行 rndc stats 命令失败',
    'log.signal_shutdown' => '收到信号 {signal}，正在平滑关闭...',
    'log.snmp_run_error' => '运行 SNMP 代理时出错：{error}',
    'log.snmp_session_failed' => '创建 SNMP 会话失败：{error}',
    'log.snmp_started' => 'SNMP 代理启动成功',
    'log.snmp_starting' => '正在 {addr}:{port} 上启动 SNMP 代理',
    'log.snmp_stopped' => 'SNMP 代理已停止',
    'log.stats_collect_error' => '收集统计信息时出错：{error}',
    'log.stats_file_not_found' => '未找到统计文件：{file}',
    'log.stats_init_failed' => '初始化统计收集器失败',
    'log.stats_init_failed_detail' => '初始化统计收集器失败：{error}',
    'log.stats_read_failed' => '读取统计文件失败：{error}',
    'log.stats_updated' => '已更新统计信息',
);

sub messages {
    return \%MESSAGES;
}

1;

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::zh_TW;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '使用 \'rndc stats\' 從 BIND9 DNS 伺服器收集統計資料，並透過 SNMP 提供查詢。',
    'cli.opt_config' => '  --config=FILE    設定檔路徑',
    'cli.opt_help' => '  --help           簡短說明訊息',
    'cli.opt_lang' => '  --lang=LOCALE    CLI 訊息的語言代碼（覆寫 LC_ALL/LC_MESSAGES/LANG）',
    'cli.opt_man' => '  --man            完整說明文件',
    'cli.opt_version' => '  --version        顯示版本',
    'cli.options_header' => '選項：',
    'cli.usage_header' => '用法：snmp_bind9_stats.pl [選項]',
    'cli.version_line' => 'snmp_bind9_stats.pl 版本 {version}',
    'log.agent_init_failed' => '初始化 SNMP 代理程式失敗',
    'log.agent_init_failed_detail' => '初始化 SNMP 代理程式失敗：{error}',
    'log.agent_starting' => '正在啟動 SNMP BIND9 統計資料代理程式 v{version}',
    'log.agent_stopped' => 'SNMP BIND9 統計資料代理程式已停止',
    'log.config_not_found' => '找不到設定檔：{file}',
    'log.config_parse_failed' => '解析設定檔失敗：{errors}',
    'log.invalid_stats_object' => '提供了無效的統計資料物件',
    'log.oid_mappings_initialized' => '已初始化 {count} 個 OID 對應',
    'log.parsed_stats' => '已解析 {count} 筆統計資料',
    'log.rndc_failed' => '執行 rndc stats 命令失敗',
    'log.signal_shutdown' => '收到訊號 {signal}，正在正常關閉...',
    'log.snmp_run_error' => '執行 SNMP 代理程式時發生錯誤：{error}',
    'log.snmp_session_failed' => '建立 SNMP 工作階段失敗：{error}',
    'log.snmp_started' => 'SNMP 代理程式已成功啟動',
    'log.snmp_starting' => '正在於 {addr}:{port} 啟動 SNMP 代理程式',
    'log.snmp_stopped' => 'SNMP 代理程式已停止',
    'log.stats_collect_error' => '收集統計資料時發生錯誤：{error}',
    'log.stats_file_not_found' => '找不到統計資料檔：{file}',
    'log.stats_init_failed' => '初始化統計資料收集器失敗',
    'log.stats_init_failed_detail' => '初始化統計資料收集器失敗：{error}',
    'log.stats_read_failed' => '讀取統計資料檔失敗：{error}',
    'log.stats_updated' => '已更新統計資料',
);

sub messages {
    return \%MESSAGES;
}

1;

# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ja;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' を使用して BIND9 DNS サーバーから統計情報を収集し、SNMP 経由で公開します。',
    'cli.opt_config' => '  --config=FILE    設定ファイルのパス',
    'cli.opt_help' => '  --help           簡易ヘルプメッセージ',
    'cli.opt_lang' => '  --lang=LOCALE    CLI メッセージの言語コード (LC_ALL/LC_MESSAGES/LANG を上書き)',
    'cli.opt_man' => '  --man            完全なドキュメント',
    'cli.opt_version' => '  --version        バージョンを表示',
    'cli.options_header' => 'オプション:',
    'cli.usage_header' => '使い方: snmp_bind9_stats.pl [オプション]',
    'cli.version_line' => 'snmp_bind9_stats.pl バージョン {version}',
    'log.agent_init_failed' => 'SNMP エージェントの初期化に失敗しました',
    'log.agent_init_failed_detail' => 'SNMP エージェントの初期化に失敗しました: {error}',
    'log.agent_starting' => 'SNMP BIND9 Statistics Agent v{version} を起動しています',
    'log.agent_stopped' => 'SNMP BIND9 Statistics Agent を停止しました',
    'log.config_not_found' => '設定ファイルが見つかりません: {file}',
    'log.config_parse_failed' => '設定ファイルの解析に失敗しました: {errors}',
    'log.invalid_stats_object' => '無効な統計オブジェクトが指定されました',
    'log.oid_mappings_initialized' => '{count} 件の OID マッピングを初期化しました',
    'log.parsed_stats' => '{count} 件の統計情報を解析しました',
    'log.rndc_failed' => 'rndc stats コマンドの実行に失敗しました',
    'log.signal_shutdown' => 'シグナル {signal} を受信しました。正常終了処理を実行しています...',
    'log.snmp_run_error' => 'SNMP エージェントの実行エラー: {error}',
    'log.snmp_session_failed' => 'SNMP セッションの作成に失敗しました: {error}',
    'log.snmp_started' => 'SNMP エージェントの起動が完了しました',
    'log.snmp_starting' => '{addr}:{port} で SNMP エージェントを起動しています',
    'log.snmp_stopped' => 'SNMP エージェントを停止しました',
    'log.stats_collect_error' => '統計情報の収集エラー: {error}',
    'log.stats_file_not_found' => '統計ファイルが見つかりません: {file}',
    'log.stats_init_failed' => '統計コレクターの初期化に失敗しました',
    'log.stats_init_failed_detail' => '統計コレクターの初期化に失敗しました: {error}',
    'log.stats_read_failed' => '統計ファイルの読み込みに失敗しました: {error}',
    'log.stats_updated' => '統計情報を更新しました',
);

sub messages {
    return \%MESSAGES;
}

1;

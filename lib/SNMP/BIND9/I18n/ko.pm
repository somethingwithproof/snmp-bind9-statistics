# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ko;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\'를 사용하여 BIND9 DNS 서버에서 통계를 수집하고 SNMP로 제공합니다.',
    'cli.opt_config' => '  --config=FILE    설정 파일 경로',
    'cli.opt_help' => '  --help           간단한 도움말 표시',
    'cli.opt_lang' => '  --lang=LOCALE    CLI 메시지 언어 코드 (LC_ALL/LC_MESSAGES/LANG보다 우선)',
    'cli.opt_man' => '  --man            전체 문서 표시',
    'cli.opt_version' => '  --version        버전 표시',
    'cli.options_header' => '옵션:',
    'cli.usage_header' => '사용법: snmp_bind9_stats.pl [옵션]',
    'cli.version_line' => 'snmp_bind9_stats.pl 버전 {version}',
    'log.agent_init_failed' => 'SNMP 에이전트 초기화 실패',
    'log.agent_init_failed_detail' => 'SNMP 에이전트 초기화 실패: {error}',
    'log.agent_starting' => 'SNMP BIND9 통계 에이전트 v{version} 시작 중',
    'log.agent_stopped' => 'SNMP BIND9 통계 에이전트가 중지되었습니다',
    'log.config_not_found' => '설정 파일을 찾을 수 없습니다: {file}',
    'log.config_parse_failed' => '설정 파일 파싱 실패: {errors}',
    'log.invalid_stats_object' => '유효하지 않은 통계 객체가 제공되었습니다',
    'log.oid_mappings_initialized' => 'OID 매핑 {count}개 초기화 완료',
    'log.parsed_stats' => '통계 항목 {count}개 파싱 완료',
    'log.rndc_failed' => 'rndc stats 명령 실행 실패',
    'log.signal_shutdown' => '{signal} 시그널 수신, 정상 종료 중...',
    'log.snmp_run_error' => 'SNMP 에이전트 실행 오류: {error}',
    'log.snmp_session_failed' => 'SNMP 세션 생성 실패: {error}',
    'log.snmp_started' => 'SNMP 에이전트가 성공적으로 시작되었습니다',
    'log.snmp_starting' => '{addr}:{port}에서 SNMP 에이전트 시작 중',
    'log.snmp_stopped' => 'SNMP 에이전트가 중지되었습니다',
    'log.stats_collect_error' => '통계 수집 오류: {error}',
    'log.stats_file_not_found' => '통계 파일을 찾을 수 없습니다: {file}',
    'log.stats_init_failed' => '통계 수집기 초기화 실패',
    'log.stats_init_failed_detail' => '통계 수집기 초기화 실패: {error}',
    'log.stats_read_failed' => '통계 파일 읽기 실패: {error}',
    'log.stats_updated' => '통계 업데이트 완료',
);

sub messages {
    return \%MESSAGES;
}

1;

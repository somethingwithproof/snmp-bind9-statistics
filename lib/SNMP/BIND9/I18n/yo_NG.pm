# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::yo_NG;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Ń kó àwọn ìṣirò jọ láti sáfà DNS BIND9 nípa lílo \'rndc stats\' ó sì ń fi wọ́n hàn nípasẹ̀ SNMP.',
    'cli.opt_config' => '  --config=FILE    Ọ̀nà sí fáìlì ìṣètò',
    'cli.opt_help' => '  --help           Ìfiránṣẹ́ ìrànlọ́wọ́ ṣókí',
    'cli.opt_lang' => '  --lang=LOCALE    Kóòdù èdè fún àwọn ìfiránṣẹ́ CLI (ó rọ́pò LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Ìwé-àkọsílẹ̀ kíkún',
    'cli.opt_version' => '  --version        Fi ẹ̀yà hàn',
    'cli.options_header' => 'Àwọn àṣàyàn:',
    'cli.usage_header' => 'Ìlò: snmp_bind9_stats.pl [àwọn àṣàyàn]',
    'cli.version_line' => 'snmp_bind9_stats.pl ẹ̀yà {version}',
    'log.agent_init_failed' => 'Ìbẹ̀rẹ̀ aṣojú SNMP kùnà',
    'log.agent_init_failed_detail' => 'Ìbẹ̀rẹ̀ aṣojú SNMP kùnà: {error}',
    'log.agent_starting' => 'Ń bẹ̀rẹ̀ Aṣojú Ìṣirò SNMP BIND9 v{version}',
    'log.agent_stopped' => 'Aṣojú Ìṣirò SNMP BIND9 ti dúró',
    'log.config_not_found' => 'A kò rí fáìlì ìṣètò: {file}',
    'log.config_parse_failed' => 'Ìtúpalẹ̀ fáìlì ìṣètò kùnà: {errors}',
    'log.invalid_stats_object' => 'A pèsè ohun ìṣirò àìtọ́',
    'log.oid_mappings_initialized' => 'A ti bẹ̀rẹ̀ àwọn ìsopọ̀ OID {count}',
    'log.parsed_stats' => 'A ti túpalẹ̀ àwọn ìṣirò {count}',
    'log.rndc_failed' => 'Ìṣiṣẹ́ àṣẹ rndc stats kùnà',
    'log.signal_shutdown' => 'A gba àmì {signal}, ń pa á ní ìrọ̀rùn...',
    'log.snmp_run_error' => 'Àṣìṣe nígbà ṣíṣiṣẹ́ aṣojú SNMP: {error}',
    'log.snmp_session_failed' => 'Ìdásílẹ̀ ìgbà SNMP kùnà: {error}',
    'log.snmp_started' => 'Aṣojú SNMP bẹ̀rẹ̀ ní àṣeyọrí',
    'log.snmp_starting' => 'Ń bẹ̀rẹ̀ aṣojú SNMP lórí {addr}:{port}',
    'log.snmp_stopped' => 'Aṣojú SNMP ti dúró',
    'log.stats_collect_error' => 'Àṣìṣe nígbà ìkójọpọ̀ àwọn ìṣirò: {error}',
    'log.stats_file_not_found' => 'A kò rí fáìlì ìṣirò: {file}',
    'log.stats_init_failed' => 'Ìbẹ̀rẹ̀ olùkójọpọ̀ ìṣirò kùnà',
    'log.stats_init_failed_detail' => 'Ìbẹ̀rẹ̀ olùkójọpọ̀ ìṣirò kùnà: {error}',
    'log.stats_read_failed' => 'Ìkà fáìlì ìṣirò kùnà: {error}',
    'log.stats_updated' => 'A ti ṣe àtúnṣe àwọn ìṣirò',
);

sub messages {
    return \%MESSAGES;
}

1;

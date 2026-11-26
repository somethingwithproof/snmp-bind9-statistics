# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::te;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' ఉపయోగించి BIND9 DNS సర్వర్ నుండి గణాంకాలను సేకరించి వాటిని SNMP ద్వారా అందిస్తుంది.',
    'cli.opt_config' => '  --config=FILE    కాన్ఫిగరేషన్ ఫైల్ మార్గం',
    'cli.opt_help' => '  --help           సంక్షిప్త సహాయ సందేశం',
    'cli.opt_lang' => '  --lang=LOCALE    CLI సందేశాల కోసం భాష కోడ్ (LC_ALL/LC_MESSAGES/LANG ను అధిగమిస్తుంది)',
    'cli.opt_man' => '  --man            పూర్తి డాక్యుమెంటేషన్',
    'cli.opt_version' => '  --version        వెర్షన్‌ను చూపించండి',
    'cli.options_header' => 'ఎంపికలు:',
    'cli.usage_header' => 'వినియోగం: snmp_bind9_stats.pl [ఎంపికలు]',
    'cli.version_line' => 'snmp_bind9_stats.pl వెర్షన్ {version}',
    'log.agent_init_failed' => 'SNMP ఏజెంట్‌ను ప్రారంభించడం విఫలమైంది',
    'log.agent_init_failed_detail' => 'SNMP ఏజెంట్‌ను ప్రారంభించడం విఫలమైంది: {error}',
    'log.agent_starting' => 'SNMP BIND9 గణాంకాల ఏజెంట్ v{version} ప్రారంభమవుతోంది',
    'log.agent_stopped' => 'SNMP BIND9 గణాంకాల ఏజెంట్ ఆగిపోయింది',
    'log.config_not_found' => 'కాన్ఫిగరేషన్ ఫైల్ కనుగొనబడలేదు: {file}',
    'log.config_parse_failed' => 'కాన్ఫిగరేషన్ ఫైల్‌ను పార్స్ చేయడం విఫలమైంది: {errors}',
    'log.invalid_stats_object' => 'చెల్లని గణాంకాల ఆబ్జెక్ట్ అందించబడింది',
    'log.oid_mappings_initialized' => '{count} OID మ్యాపింగ్‌లు ప్రారంభించబడ్డాయి',
    'log.parsed_stats' => '{count} గణాంకాలు పార్స్ చేయబడ్డాయి',
    'log.rndc_failed' => 'rndc stats కమాండ్‌ను అమలు చేయడం విఫలమైంది',
    'log.signal_shutdown' => '{signal} సిగ్నల్ అందింది, సురక్షితంగా మూసివేయబడుతోంది...',
    'log.snmp_run_error' => 'SNMP ఏజెంట్‌ను అమలు చేయడంలో లోపం: {error}',
    'log.snmp_session_failed' => 'SNMP సెషన్‌ను సృష్టించడం విఫలమైంది: {error}',
    'log.snmp_started' => 'SNMP ఏజెంట్ విజయవంతంగా ప్రారంభమైంది',
    'log.snmp_starting' => '{addr}:{port} వద్ద SNMP ఏజెంట్ ప్రారంభమవుతోంది',
    'log.snmp_stopped' => 'SNMP ఏజెంట్ ఆగిపోయింది',
    'log.stats_collect_error' => 'గణాంకాలను సేకరించడంలో లోపం: {error}',
    'log.stats_file_not_found' => 'గణాంకాల ఫైల్ కనుగొనబడలేదు: {file}',
    'log.stats_init_failed' => 'గణాంకాల సేకరణకర్తను ప్రారంభించడం విఫలమైంది',
    'log.stats_init_failed_detail' => 'గణాంకాల సేకరణకర్తను ప్రారంభించడం విఫలమైంది: {error}',
    'log.stats_read_failed' => 'గణాంకాల ఫైల్‌ను చదవడం విఫలమైంది: {error}',
    'log.stats_updated' => 'గణాంకాలు నవీకరించబడ్డాయి',
);

sub messages {
    return \%MESSAGES;
}

1;

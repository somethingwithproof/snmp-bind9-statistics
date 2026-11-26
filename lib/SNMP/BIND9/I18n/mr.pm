# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::mr;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' वापरून BIND9 DNS सर्व्हरवरून आकडेवारी संकलित करते आणि SNMP द्वारे उपलब्ध करून देते.',
    'cli.opt_config' => '  --config=FILE    कॉन्फिगरेशन फाइलचा पथ',
    'cli.opt_help' => '  --help           संक्षिप्त मदत संदेश',
    'cli.opt_lang' => '  --lang=LOCALE    CLI संदेशांसाठी भाषा कोड (LC_ALL/LC_MESSAGES/LANG अधिलिखित करतो)',
    'cli.opt_man' => '  --man            संपूर्ण दस्तऐवजीकरण',
    'cli.opt_version' => '  --version        आवृत्ती दाखवा',
    'cli.options_header' => 'पर्याय:',
    'cli.usage_header' => 'वापर: snmp_bind9_stats.pl [पर्याय]',
    'cli.version_line' => 'snmp_bind9_stats.pl आवृत्ती {version}',
    'log.agent_init_failed' => 'SNMP एजंट सुरू करण्यात अयशस्वी',
    'log.agent_init_failed_detail' => 'SNMP एजंट सुरू करण्यात अयशस्वी: {error}',
    'log.agent_starting' => 'SNMP BIND9 आकडेवारी एजंट v{version} सुरू होत आहे',
    'log.agent_stopped' => 'SNMP BIND9 आकडेवारी एजंट थांबला',
    'log.config_not_found' => 'कॉन्फिगरेशन फाइल आढळली नाही: {file}',
    'log.config_parse_failed' => 'कॉन्फिगरेशन फाइल पार्स करण्यात अयशस्वी: {errors}',
    'log.invalid_stats_object' => 'अवैध आकडेवारी ऑब्जेक्ट प्रदान केला आहे',
    'log.oid_mappings_initialized' => '{count} OID मॅपिंग्ज प्रारंभ केल्या',
    'log.parsed_stats' => '{count} आकडेवारी पार्स केली',
    'log.rndc_failed' => 'rndc stats कमांड चालवण्यात अयशस्वी',
    'log.signal_shutdown' => 'सिग्नल {signal} प्राप्त झाला, सुरक्षितपणे बंद होत आहे...',
    'log.snmp_run_error' => 'SNMP एजंट चालवताना त्रुटी: {error}',
    'log.snmp_session_failed' => 'SNMP सत्र तयार करण्यात अयशस्वी: {error}',
    'log.snmp_started' => 'SNMP एजंट यशस्वीरित्या सुरू झाला',
    'log.snmp_starting' => '{addr}:{port} वर SNMP एजंट सुरू होत आहे',
    'log.snmp_stopped' => 'SNMP एजंट थांबला',
    'log.stats_collect_error' => 'आकडेवारी संकलित करताना त्रुटी: {error}',
    'log.stats_file_not_found' => 'आकडेवारी फाइल आढळली नाही: {file}',
    'log.stats_init_failed' => 'आकडेवारी संकलक सुरू करण्यात अयशस्वी',
    'log.stats_init_failed_detail' => 'आकडेवारी संकलक सुरू करण्यात अयशस्वी: {error}',
    'log.stats_read_failed' => 'आकडेवारी फाइल वाचण्यात अयशस्वी: {error}',
    'log.stats_updated' => 'आकडेवारी अद्यतनित केली',
);

sub messages {
    return \%MESSAGES;
}

1;

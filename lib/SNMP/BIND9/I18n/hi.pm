# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::hi;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' का उपयोग करके BIND9 DNS सर्वर से सांख्यिकी एकत्र करता है और उन्हें SNMP के माध्यम से उपलब्ध कराता है।',
    'cli.opt_config' => '  --config=FILE    कॉन्फ़िगरेशन फ़ाइल का पथ',
    'cli.opt_help' => '  --help           संक्षिप्त सहायता संदेश',
    'cli.opt_lang' => '  --lang=LOCALE    CLI संदेशों के लिए भाषा कोड (LC_ALL/LC_MESSAGES/LANG को ओवरराइड करता है)',
    'cli.opt_man' => '  --man            संपूर्ण दस्तावेज़ीकरण',
    'cli.opt_version' => '  --version        संस्करण दिखाएं',
    'cli.options_header' => 'विकल्प:',
    'cli.usage_header' => 'उपयोग: snmp_bind9_stats.pl [विकल्प]',
    'cli.version_line' => 'snmp_bind9_stats.pl संस्करण {version}',
    'log.agent_init_failed' => 'SNMP एजेंट प्रारंभ करने में विफल',
    'log.agent_init_failed_detail' => 'SNMP एजेंट प्रारंभ करने में विफल: {error}',
    'log.agent_starting' => 'SNMP BIND9 सांख्यिकी एजेंट v{version} शुरू किया जा रहा है',
    'log.agent_stopped' => 'SNMP BIND9 सांख्यिकी एजेंट रुका',
    'log.config_not_found' => 'कॉन्फ़िगरेशन फ़ाइल नहीं मिली: {file}',
    'log.config_parse_failed' => 'कॉन्फ़िगरेशन फ़ाइल पार्स करने में विफल: {errors}',
    'log.invalid_stats_object' => 'अमान्य सांख्यिकी ऑब्जेक्ट प्रदान किया गया',
    'log.oid_mappings_initialized' => '{count} OID मैपिंग प्रारंभ की गईं',
    'log.parsed_stats' => '{count} सांख्यिकी पार्स की गईं',
    'log.rndc_failed' => 'rndc stats कमांड निष्पादित करने में विफल',
    'log.signal_shutdown' => 'संकेत {signal} प्राप्त हुआ, सुरक्षित रूप से बंद किया जा रहा है...',
    'log.snmp_run_error' => 'SNMP एजेंट चलाने में त्रुटि: {error}',
    'log.snmp_session_failed' => 'SNMP सत्र बनाने में विफल: {error}',
    'log.snmp_started' => 'SNMP एजेंट सफलतापूर्वक शुरू हुआ',
    'log.snmp_starting' => '{addr}:{port} पर SNMP एजेंट शुरू किया जा रहा है',
    'log.snmp_stopped' => 'SNMP एजेंट रुका',
    'log.stats_collect_error' => 'सांख्यिकी एकत्र करने में त्रुटि: {error}',
    'log.stats_file_not_found' => 'सांख्यिकी फ़ाइल नहीं मिली: {file}',
    'log.stats_init_failed' => 'सांख्यिकी संग्राहक प्रारंभ करने में विफल',
    'log.stats_init_failed_detail' => 'सांख्यिकी संग्राहक प्रारंभ करने में विफल: {error}',
    'log.stats_read_failed' => 'सांख्यिकी फ़ाइल पढ़ने में विफल: {error}',
    'log.stats_updated' => 'सांख्यिकी अपडेट की गईं',
);

sub messages {
    return \%MESSAGES;
}

1;

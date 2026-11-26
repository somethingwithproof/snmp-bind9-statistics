# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::ms;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Mengumpul statistik daripada pelayan DNS BIND9 menggunakan \'rndc stats\' dan mendedahkannya melalui SNMP.',
    'cli.opt_config' => '  --config=FILE    Laluan ke fail konfigurasi',
    'cli.opt_help' => '  --help           Mesej bantuan ringkas',
    'cli.opt_lang' => '  --lang=LOCALE    Kod bahasa untuk mesej CLI (mengatasi LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Dokumentasi penuh',
    'cli.opt_version' => '  --version        Papar versi',
    'cli.options_header' => 'Pilihan:',
    'cli.usage_header' => 'Penggunaan: snmp_bind9_stats.pl [pilihan]',
    'cli.version_line' => 'snmp_bind9_stats.pl versi {version}',
    'log.agent_init_failed' => 'Gagal memulakan ejen SNMP',
    'log.agent_init_failed_detail' => 'Gagal memulakan ejen SNMP: {error}',
    'log.agent_starting' => 'Memulakan Ejen Statistik BIND9 SNMP v{version}',
    'log.agent_stopped' => 'Ejen Statistik BIND9 SNMP dihentikan',
    'log.config_not_found' => 'Fail konfigurasi tidak ditemui: {file}',
    'log.config_parse_failed' => 'Gagal menghurai fail konfigurasi: {errors}',
    'log.invalid_stats_object' => 'Objek statistik yang dibekalkan tidak sah',
    'log.oid_mappings_initialized' => '{count} pemetaan OID telah dimulakan',
    'log.parsed_stats' => '{count} statistik telah dihuraikan',
    'log.rndc_failed' => 'Gagal melaksanakan arahan rndc stats',
    'log.signal_shutdown' => 'Menerima isyarat {signal}, menutup dengan teratur...',
    'log.snmp_run_error' => 'Ralat menjalankan ejen SNMP: {error}',
    'log.snmp_session_failed' => 'Gagal mencipta sesi SNMP: {error}',
    'log.snmp_started' => 'Ejen SNMP berjaya dimulakan',
    'log.snmp_starting' => 'Memulakan ejen SNMP pada {addr}:{port}',
    'log.snmp_stopped' => 'Ejen SNMP dihentikan',
    'log.stats_collect_error' => 'Ralat mengumpul statistik: {error}',
    'log.stats_file_not_found' => 'Fail statistik tidak ditemui: {file}',
    'log.stats_init_failed' => 'Gagal memulakan pengumpul statistik',
    'log.stats_init_failed_detail' => 'Gagal memulakan pengumpul statistik: {error}',
    'log.stats_read_failed' => 'Gagal membaca fail statistik: {error}',
    'log.stats_updated' => 'Statistik dikemas kini',
);

sub messages {
    return \%MESSAGES;
}

1;

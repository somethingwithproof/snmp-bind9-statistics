# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::id;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'Mengumpulkan statistik dari server DNS BIND9 menggunakan \'rndc stats\' dan menyediakannya melalui SNMP.',
    'cli.opt_config' => '  --config=FILE    Jalur ke berkas konfigurasi',
    'cli.opt_help' => '  --help           Pesan bantuan singkat',
    'cli.opt_lang' => '  --lang=LOCALE    Kode bahasa untuk pesan CLI (menggantikan LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            Dokumentasi lengkap',
    'cli.opt_version' => '  --version        Tampilkan versi',
    'cli.options_header' => 'Opsi:',
    'cli.usage_header' => 'Penggunaan: snmp_bind9_stats.pl [opsi]',
    'cli.version_line' => 'snmp_bind9_stats.pl versi {version}',
    'log.agent_init_failed' => 'Gagal menginisialisasi agen SNMP',
    'log.agent_init_failed_detail' => 'Gagal menginisialisasi agen SNMP: {error}',
    'log.agent_starting' => 'Memulai Agen Statistik BIND9 SNMP v{version}',
    'log.agent_stopped' => 'Agen Statistik BIND9 SNMP dihentikan',
    'log.config_not_found' => 'Berkas konfigurasi tidak ditemukan: {file}',
    'log.config_parse_failed' => 'Gagal mengurai berkas konfigurasi: {errors}',
    'log.invalid_stats_object' => 'Objek statistik yang diberikan tidak valid',
    'log.oid_mappings_initialized' => 'Berhasil menginisialisasi {count} pemetaan OID',
    'log.parsed_stats' => 'Berhasil mengurai {count} statistik',
    'log.rndc_failed' => 'Gagal menjalankan perintah rndc stats',
    'log.signal_shutdown' => 'Menerima sinyal {signal}, menghentikan proses dengan aman...',
    'log.snmp_run_error' => 'Kesalahan saat menjalankan agen SNMP: {error}',
    'log.snmp_session_failed' => 'Gagal membuat sesi SNMP: {error}',
    'log.snmp_started' => 'Agen SNMP berhasil dimulai',
    'log.snmp_starting' => 'Memulai agen SNMP pada {addr}:{port}',
    'log.snmp_stopped' => 'Agen SNMP dihentikan',
    'log.stats_collect_error' => 'Kesalahan saat mengumpulkan statistik: {error}',
    'log.stats_file_not_found' => 'Berkas statistik tidak ditemukan: {file}',
    'log.stats_init_failed' => 'Gagal menginisialisasi pengumpul statistik',
    'log.stats_init_failed_detail' => 'Gagal menginisialisasi pengumpul statistik: {error}',
    'log.stats_read_failed' => 'Gagal membaca berkas statistik: {error}',
    'log.stats_updated' => 'Statistik diperbarui',
);

sub messages {
    return \%MESSAGES;
}

1;

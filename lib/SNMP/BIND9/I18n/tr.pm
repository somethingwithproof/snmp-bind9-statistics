# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::tr;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => '\'rndc stats\' kullanarak bir BIND9 DNS sunucusundan istatistikleri toplar ve bunları SNMP üzerinden sunar.',
    'cli.opt_config' => '  --config=FILE    Yapılandırma dosyasının yolu',
    'cli.opt_help' => '  --help           Kısa yardım mesajı',
    'cli.opt_lang' => '  --lang=LOCALE    CLI mesajları için dil kodu (LC_ALL/LC_MESSAGES/LANG değerlerini geçersiz kılar)',
    'cli.opt_man' => '  --man            Tam belgeler',
    'cli.opt_version' => '  --version        Sürümü göster',
    'cli.options_header' => 'Seçenekler:',
    'cli.usage_header' => 'Kullanım: snmp_bind9_stats.pl [seçenekler]',
    'cli.version_line' => 'snmp_bind9_stats.pl sürüm {version}',
    'log.agent_init_failed' => 'SNMP aracısı başlatılamadı',
    'log.agent_init_failed_detail' => 'SNMP aracısı başlatılamadı: {error}',
    'log.agent_starting' => 'SNMP BIND9 İstatistik Aracısı v{version} başlatılıyor',
    'log.agent_stopped' => 'SNMP BIND9 İstatistik Aracısı durduruldu',
    'log.config_not_found' => 'Yapılandırma dosyası bulunamadı: {file}',
    'log.config_parse_failed' => 'Yapılandırma dosyası ayrıştırılamadı: {errors}',
    'log.invalid_stats_object' => 'Geçersiz istatistik nesnesi sağlandı',
    'log.oid_mappings_initialized' => '{count} OID eşlemesi başlatıldı',
    'log.parsed_stats' => '{count} istatistik ayrıştırıldı',
    'log.rndc_failed' => 'rndc stats komutu yürütülemedi',
    'log.signal_shutdown' => '{signal} sinyali alındı, düzgün biçimde kapatılıyor...',
    'log.snmp_run_error' => 'SNMP aracısı çalıştırılırken hata oluştu: {error}',
    'log.snmp_session_failed' => 'SNMP oturumu oluşturulamadı: {error}',
    'log.snmp_started' => 'SNMP aracısı başarıyla başlatıldı',
    'log.snmp_starting' => 'SNMP aracısı {addr}:{port} üzerinde başlatılıyor',
    'log.snmp_stopped' => 'SNMP aracısı durduruldu',
    'log.stats_collect_error' => 'İstatistikler toplanırken hata oluştu: {error}',
    'log.stats_file_not_found' => 'İstatistik dosyası bulunamadı: {file}',
    'log.stats_init_failed' => 'İstatistik toplayıcı başlatılamadı',
    'log.stats_init_failed_detail' => 'İstatistik toplayıcı başlatılamadı: {error}',
    'log.stats_read_failed' => 'İstatistik dosyası okunamadı: {error}',
    'log.stats_updated' => 'İstatistikler güncellendi',
);

sub messages {
    return \%MESSAGES;
}

1;

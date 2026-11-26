#!/usr/bin/env perl
# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

use strict;
use warnings;
use utf8;
use Test::More;
use FindBin qw($Bin);
use lib "$Bin/../../lib";

BEGIN {
    use_ok(
        'SNMP::BIND9::I18n',
        qw(
            DEFAULT_LOCALE
            SUPPORTED_LOCALES
            normalize_locale
            detect_locale
            set_locale
            get_locale
            load_catalog
            t
            format_help
        )
    );
}

my @locales = SUPPORTED_LOCALES();
is( scalar(@locales), 20, 'exactly 20 Tier 1 locales supported' );

my $en = load_catalog(DEFAULT_LOCALE);
ok( ref($en) eq 'HASH' && scalar( keys %{$en} ) > 0, 'English catalog loads' );

my @en_keys = sort keys %{$en};

sub extract_placeholders {
    my ($str) = @_;
    my @ph = sort( $str =~ /(\{[a-zA-Z0-9_]+\})/g );
    return join( ',', @ph );
}

for my $loc (@locales) {
    my $cat = load_catalog($loc);
    ok( ref($cat) eq 'HASH', "catalog loads for $loc" );
    my @keys = sort keys %{$cat};
    is_deeply( \@keys, \@en_keys, "100% key parity for $loc" );

    my $ph_ok = 1;
    my $non_empty = 1;
    for my $k (@en_keys) {
        if ( !defined $cat->{$k} || $cat->{$k} !~ /\S/ ) {
            $non_empty = 0;
            diag("empty translation in $loc:$k");
        }
        if ( extract_placeholders( $cat->{$k} ) ne extract_placeholders( $en->{$k} ) ) {
            $ph_ok = 0;
            diag("placeholder mismatch in $loc:$k");
        }
    }
    ok( $non_empty, "all strings non-empty for $loc" );
    ok( $ph_ok,     "100% placeholder parity for $loc" );
}

my @norm_cases = (
    [ undef,          'en' ],
    [ '',             'en' ],
    [ 'C',            'en' ],
    [ 'POSIX',        'en' ],
    [ 'C.UTF-8',      'en' ],
    [ 'de_DE.UTF-8',  'de' ],
    [ 'de_AT@euro',   'de' ],
    [ 'zh_TW',        'zh-TW' ],
    [ 'zh_HK.UTF-8',  'zh-TW' ],
    [ 'zh-Hant-TW',   'zh-TW' ],
    [ 'zh_CN.UTF-8',  'zh-CN' ],
    [ 'zh',           'zh-CN' ],
    [ 'pt_BR.UTF-8',  'pt-BR' ],
    [ 'pt_PT',        'pt-BR' ],
    [ 'uk_UA.UTF-8',  'uk' ],
    [ 'xx_YY',        'en' ],
);

for my $case (@norm_cases) {
    my ( $raw, $expected ) = @{$case};
    my $label = defined $raw ? $raw : '<undef>';
    is( normalize_locale($raw), $expected, "normalize_locale($label) => $expected" );
}

{
    local $ENV{LC_ALL};
    local $ENV{LC_MESSAGES};
    local $ENV{LANG};
    delete @ENV{qw(LC_ALL LC_MESSAGES LANG)};
    set_locale(undef);

    is( detect_locale(), 'en', 'defaults to en when unset' );
    $ENV{LANG} = 'fr_FR.UTF-8';
    is( detect_locale(), 'fr', 'honors LANG' );
    $ENV{LC_MESSAGES} = 'ja_JP.UTF-8';
    is( detect_locale(), 'ja', 'LC_MESSAGES overrides LANG' );
    $ENV{LC_ALL} = 'de_DE.UTF-8';
    is( detect_locale(), 'de', 'LC_ALL overrides LC_MESSAGES' );
    is( detect_locale('es'), 'es', 'explicit overrides LC_ALL' );

    is( set_locale('pl'), 'pl', 'set_locale activates pl' );
    is( get_locale(), 'pl', 'get_locale returns active override' );
    set_locale(undef);
    is( get_locale(), 'de', 'set_locale(undef) restores env detection' );
}

set_locale('en');
is(
    t( 'cli.version_line', { version => '1.0.0' } ),
    'snmp_bind9_stats.pl version 1.0.0',
    'default English version line unchanged'
);
is( t('nonexistent.key'), 'nonexistent.key', 'unknown key falls back to key' );
like( format_help('en'), qr/Usage: snmp_bind9_stats\.pl \[options\]/, 'English help unchanged' );
like( format_help('de'), qr/--lang=LOCALE/, 'German help preserves CLI flags' );
isnt( format_help('de'), format_help('en'), 'German help differs from English' );

done_testing();

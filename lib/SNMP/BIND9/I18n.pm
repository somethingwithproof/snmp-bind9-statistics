# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n;

use strict;
use warnings;
use utf8;
use 5.010;
use Exporter qw(import);

our $VERSION = '1.0.0';
our @EXPORT_OK = qw(
    DEFAULT_LOCALE
    SUPPORTED_LOCALES
    normalize_locale
    detect_locale
    set_locale
    get_locale
    load_catalog
    t
    format_help
);

use constant DEFAULT_LOCALE => 'en';

our @SUPPORTED_LOCALES = (
    'en',    'de',    'es',    'fr',    'it',
    'pt-BR', 'nl',    'ru',    'uk',    'ja',
    'ko',    'zh-CN', 'zh-TW', 'ar',    'hi',
    'pl',    'tr',    'sv',    'vi',    'id',
);

my %LOCALE_BY_LOWER = map { lc($_) => $_ } @SUPPORTED_LOCALES;
my %ZH_TRADITIONAL  = map { $_ => 1 } qw(zh-tw zh-hk zh-mo zh-hant);
my %CATALOG_CACHE;
my $ACTIVE_LOCALE;

sub SUPPORTED_LOCALES {
    return @SUPPORTED_LOCALES;
}

sub normalize_locale {
    my ($raw) = @_;
    return DEFAULT_LOCALE unless defined $raw && length $raw;

    my $cleaned = $raw;
    $cleaned =~ s/^\s+|\s+$//g;
    $cleaned =~ s/\..*$//;
    $cleaned =~ s/\@.*$//;

    return DEFAULT_LOCALE
        if !length($cleaned) || uc($cleaned) eq 'C' || uc($cleaned) eq 'POSIX';

    my $tag = lc($cleaned);
    $tag =~ s/_/-/g;

    return $LOCALE_BY_LOWER{$tag} if exists $LOCALE_BY_LOWER{$tag};
    return 'zh-TW' if $ZH_TRADITIONAL{$tag} || $tag =~ /\Azh-hant-/;
    return 'zh-CN' if $tag eq 'zh' || $tag =~ /\Azh-/;
    return 'pt-BR' if $tag eq 'pt' || $tag =~ /\Apt-/;

    my ($primary) = split /-/, $tag, 2;
    return exists $LOCALE_BY_LOWER{$primary}
        ? $LOCALE_BY_LOWER{$primary}
        : DEFAULT_LOCALE;
}

sub detect_locale {
    my ($explicit) = @_;
    return normalize_locale($explicit) if defined $explicit && length $explicit;

    for my $var (qw(LC_ALL LC_MESSAGES LANG)) {
        return normalize_locale($ENV{$var})
            if defined $ENV{$var} && length $ENV{$var};
    }
    return DEFAULT_LOCALE;
}

sub set_locale {
    my ($locale) = @_;
    if (!defined $locale) {
        $ACTIVE_LOCALE = undef;
        return detect_locale();
    }
    $ACTIVE_LOCALE = normalize_locale($locale);
    return $ACTIVE_LOCALE;
}

sub get_locale {
    return defined $ACTIVE_LOCALE ? $ACTIVE_LOCALE : detect_locale();
}

sub _module_for_locale {
    my ($locale) = @_;
    my $suffix = $locale;
    $suffix =~ s/-/_/g;
    return "SNMP::BIND9::I18n::$suffix";
}

sub load_catalog {
    my ($locale) = @_;
    my $resolved = normalize_locale($locale);
    return $CATALOG_CACHE{$resolved} if exists $CATALOG_CACHE{$resolved};

    my $module = _module_for_locale($resolved);
    (my $file = "$module.pm") =~ s{::}{/}g;
    require $file;
    my $messages = $module->messages();
    $CATALOG_CACHE{$resolved} = $messages;
    return $messages;
}

sub t {
    my ($key, $params, $locale) = @_;
    my $target   = defined $locale ? normalize_locale($locale) : get_locale();
    my $catalog  = load_catalog($target);
    my $template = exists $catalog->{$key}
        ? $catalog->{$key}
        : load_catalog(DEFAULT_LOCALE)->{$key};
    $template = $key unless defined $template;

    if (ref($params) eq 'HASH' && keys %{$params}) {
        $template =~ s/\{([a-zA-Z0-9_]+)\}/exists $params->{$1} ? $params->{$1} : "{$1}"/ge;
    }
    return $template;
}

sub format_help {
    my ($locale) = @_;
    return join(
        "\n",
        t('cli.usage_header', undef, $locale),
        '',
        t('cli.description', undef, $locale),
        '',
        t('cli.options_header', undef, $locale),
        t('cli.opt_config',     undef, $locale),
        t('cli.opt_lang',       undef, $locale),
        t('cli.opt_help',       undef, $locale),
        t('cli.opt_man',        undef, $locale),
        t('cli.opt_version',    undef, $locale),
        '',
    );
}

1;

__END__

=head1 NAME

SNMP::BIND9::I18n - Zero-dependency localization for SNMP::BIND9 CLI and diagnostics

=head1 SYNOPSIS

    use SNMP::BIND9::I18n qw(t set_locale get_locale format_help);

    set_locale('de');
    print format_help();
    print t('cli.version_line', { version => '1.0.0' });

=head1 DESCRIPTION

Provides 20-locale catalog lookup using only core Perl modules. Honors
C<LC_ALL>, C<LC_MESSAGES>, and C<LANG> with fallback to English (C<en>).

=head1 AUTHOR

Thomas Vincent

=head1 LICENSE

MIT License

=cut

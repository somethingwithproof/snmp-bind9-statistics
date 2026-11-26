#!/usr/bin/env perl
# SPDX-FileCopyrightText: 2025-2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

use strict;
use warnings;
use 5.010;
use Getopt::Long;
use Pod::Usage;
use Config::IniFiles;
use Net::SNMP qw(:snmp);
use File::Slurp qw(read_file);
use Log::Log4perl qw(:easy);
use FindBin qw($Bin);
use lib "$Bin/../lib";
use SNMP::BIND9::Statistics;
use SNMP::BIND9::Agent;
use SNMP::BIND9::I18n qw(format_help set_locale t);
use POSIX qw(strftime);
use Time::HiRes qw(sleep);
use Scalar::Util qw(blessed);
use sigtrap qw(handler sig_handler normal-signals);

# Version
our $VERSION = '1.0.0';

# Initialize logging
sub init_logging {
    my $log_level = shift || 'INFO';
    my $log_conf = qq{
        log4perl.rootLogger=$log_level, SCREEN
        log4perl.appender.SCREEN=Log::Log4perl::Appender::Screen
        log4perl.appender.SCREEN.layout=PatternLayout
        log4perl.appender.SCREEN.layout.ConversionPattern=[%d] [%p] %m%n
    };
    Log::Log4perl->init(\$log_conf);
}

# Parse command line options
sub parse_options {
    my %opts;
    GetOptions(
        'config=s' => \$opts{config},
        'lang=s'   => \$opts{lang},
        'help|?'   => \$opts{help},
        'man'      => \$opts{man},
        'version'  => \$opts{version},
    ) or pod2usage(2);

    binmode( STDOUT, ':encoding(UTF-8)' );
    binmode( STDERR, ':encoding(UTF-8)' );
    set_locale( $opts{lang} );

    if ( $opts{help} ) {
        print format_help();
        exit 0;
    }
    if ( $opts{man} ) {
        pod2usage( -exitval => 0, -verbose => 2 );
    }
    if ( $opts{version} ) {
        say t( 'cli.version_line', { version => $VERSION } );
        exit 0;
    }

    # Default config file location
    $opts{config} ||= "$Bin/../config.ini";

    return \%opts;
}

# Load configuration
sub load_config {
    my $config_file = shift;

    unless ( -e $config_file ) {
        ERROR( t( 'log.config_not_found', { file => $config_file } ) );
        exit 1;
    }

    my $cfg = Config::IniFiles->new( -file => $config_file );
    unless ($cfg) {
        ERROR(
            t(
                'log.config_parse_failed',
                { errors => join( "\n", @Config::IniFiles::errors ) }
            )
        );
        exit 1;
    }

    return $cfg;
}

# Global agent reference for signal handler
our $AGENT;

# Signal handler for graceful shutdown
sub sig_handler {
    my $sig = shift;
    INFO( t( 'log.signal_shutdown', { signal => $sig } ) );

    if ( $AGENT && blessed($AGENT) && $AGENT->can('stop') ) {
        $AGENT->stop();
        INFO( t('log.agent_stopped') );
    }

    exit 0;
}

# Main function
sub main {
    my $opts = parse_options();
    my $cfg  = load_config( $opts->{config} );

    # Initialize logging with configured level
    my $log_level = $cfg->val( 'general', 'log_level', 'INFO' );
    init_logging($log_level);

    INFO( t( 'log.agent_starting', { version => $VERSION } ) );

    # Create statistics collector
    my $stats;
    eval {
        $stats = SNMP::BIND9::Statistics->new(
            stats_file => $cfg->val(
                'general', 'stats_file', '/var/cache/bind/named.stats'
            ),
            rndc_command =>
              $cfg->val( 'general', 'rndc_command', 'rndc stats' ),
            poll_interval => $cfg->val( 'general', 'poll_interval', 300 ),
        );
    };
    if ($@) {
        ERROR( t( 'log.stats_init_failed_detail', { error => "$@" } ) );
        exit 1;
    }

    unless ($stats) {
        ERROR( t('log.stats_init_failed') );
        exit 1;
    }

    # Create SNMP agent
    eval {
        $AGENT = SNMP::BIND9::Agent->new(
            community  => $cfg->val( 'snmp', 'community',  'public' ),
            port       => $cfg->val( 'snmp', 'port',       161 ),
            agent_addr => $cfg->val( 'snmp', 'agent_addr', '0.0.0.0' ),
            stats      => $stats,
        );
    };
    if ($@) {
        ERROR( t( 'log.agent_init_failed_detail', { error => "$@" } ) );
        exit 1;
    }

    unless ($AGENT) {
        ERROR( t('log.agent_init_failed') );
        exit 1;
    }

    # Start the agent
    INFO(
        t(
            'log.snmp_starting',
            {
                addr => $cfg->val( 'snmp', 'agent_addr', '0.0.0.0' ),
                port => $cfg->val( 'snmp', 'port',       161 ),
            }
        )
    );

    eval { $AGENT->run(); };
    if ($@) {
        ERROR( t( 'log.snmp_run_error', { error => "$@" } ) );
        exit 1;
    }

    # Infinite loop to keep the script running
    # Signal handlers will catch SIGINT and SIGTERM for shutdown
    while (1) {
        eval {
            # Force statistics update every poll interval
            $stats->collect_stats(1);
            DEBUG( t('log.stats_updated') );
        };
        if ($@) {
            WARN( t( 'log.stats_collect_error', { error => "$@" } ) );
        }

        sleep( $cfg->val( 'general', 'poll_interval', 300 ) );
    }

    # We should never reach here due to the signal handlers,
    # but just in case:
    INFO( t('log.agent_stopped') );
}

# Run the main function
main();

__END__

=head1 NAME

snmp_bind9_stats.pl - BIND9 DNS server statistics via SNMP

=head1 SYNOPSIS

snmp_bind9_stats.pl [options]

 Options:
   --config=FILE    Path to configuration file
   --help           Brief help message
   --man            Full documentation
   --version        Show version

=head1 DESCRIPTION

This script collects statistics from a BIND9 DNS server using the 'rndc stats'
command and makes them available via SNMP.

=head1 OPTIONS

=over 8

=item B<--config>=FILE

Path to the configuration file. Default is '../config.ini' relative to the script.

=item B<--help>

Print a brief help message and exit.

=item B<--man>

Print the manual page and exit.

=item B<--version>

Print version information and exit.

=back

=head1 CONFIGURATION

The configuration file uses INI format with the following sections and options:

 [general]
 stats_file = /var/cache/bind/named.stats
 rndc_command = rndc stats
 log_level = INFO
 poll_interval = 300

 [snmp]
 community = public
 port = 161

=head1 AUTHOR

Thomas Vincent

=head1 LICENSE

This is released under the MIT License. See the LICENSE file for details.

=cut

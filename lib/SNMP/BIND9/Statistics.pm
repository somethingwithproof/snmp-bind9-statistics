package SNMP::BIND9::Statistics;

use strict;
use warnings;
use 5.010;
use File::Slurp qw(read_file write_file);
use Log::Log4perl qw(:easy);
use Time::HiRes qw(time);

our $VERSION = '1.0.0';

# Constructor
sub new {
    my ($class, %args) = @_;
    
    my $self = {
        stats_file    => $args{stats_file} || '/var/cache/bind/named.stats',
        rndc_command  => $args{rndc_command} || 'rndc stats',
        poll_interval => $args{poll_interval} || 300,
        last_update   => 0,
        cache         => {},
    };
    
    bless $self, $class;
    return $self;
}

# Collect statistics from BIND9
sub collect_stats {
    my ($self, $force) = @_;
    
    # Check if we need to update
    my $now = time();
    unless ($force || ($now - $self->{last_update} > $self->{poll_interval})) {
        return $self->{cache};
    }
    
    # Execute rndc stats command
    DEBUG("Executing: $self->{rndc_command}");
    my $result = system($self->{rndc_command});
    
    if ($result != 0) {
        WARN("Failed to execute rndc stats command");
        return $self->{cache};
    }
    
    # Wait a moment for the stats file to be written
    sleep(1);
    
    # Parse the stats file
    if (-e $self->{stats_file}) {
        $self->parse_stats_file();
        $self->{last_update} = $now;
    } else {
        WARN("Stats file not found: $self->{stats_file}");
    }
    
    return $self->{cache};
}

# Parse BIND9 statistics file
sub parse_stats_file {
    my ($self) = @_;
    
    my $content;
    eval {
        $content = read_file($self->{stats_file});
    };
    if ($@) {
        ERROR("Failed to read stats file: $@");
        return;
    }
    
    # Parse different sections of the stats file
    $self->parse_incoming_queries($content);
    $self->parse_outgoing_queries($content);
    $self->parse_name_server_statistics($content);
    $self->parse_zone_statistics($content);
    $self->parse_resolver_statistics($content);
    
    DEBUG("Parsed " . scalar(keys %{$self->{cache}}) . " statistics");
}

# Parse incoming queries section
sub parse_incoming_queries {
    my ($self, $content) = @_;
    
    if ($content =~ /\+\+\+ Incoming Queries \+\+\+(.*?)\+\+\+/s) {
        my $section = $1;
        while ($section =~ /\s+(\d+)\s+(\w+)/g) {
            my ($count, $type) = ($1, $2);
            $self->{cache}{"incoming_queries_$type"} = $count;
        }
    }
}

# Parse outgoing queries section
sub parse_outgoing_queries {
    my ($self, $content) = @_;
    
    if ($content =~ /\+\+\+ Outgoing Queries \+\+\+(.*?)\+\+\+/s) {
        my $section = $1;
        my @lines = split /\n/, $section;
        foreach my $line (@lines) {
            if ($line =~ /\[View:\s+(\w+)\]/) {
                my $view = $1;
                if ($line =~ /\s+(\d+)\s+(\w+)/) {
                    my ($count, $type) = ($1, $2);
                    $self->{cache}{"outgoing_queries_${view}_$type"} = $count;
                }
            }
        }
    }
}

# Parse name server statistics
sub parse_name_server_statistics {
    my ($self, $content) = @_;
    
    if ($content =~ /\+\+\+ Name Server Statistics \+\+\+(.*?)\+\+\+/s) {
        my $section = $1;
        while ($section =~ /\s+(\d+)\s+(.+?)$/mg) {
            my ($count, $stat) = ($1, $2);
            $stat =~ s/\s+/_/g;
            $stat =~ s/[^\w_]//g;
            $self->{cache}{"ns_stats_$stat"} = $count;
        }
    }
}

# Parse zone statistics
sub parse_zone_statistics {
    my ($self, $content) = @_;
    
    if ($content =~ /\+\+\+ Zone Maintenance Statistics \+\+\+(.*?)\+\+\+/s) {
        my $section = $1;
        while ($section =~ /\s+(\d+)\s+(.+?)$/mg) {
            my ($count, $stat) = ($1, $2);
            $stat =~ s/\s+/_/g;
            $stat =~ s/[^\w_]//g;
            $self->{cache}{"zone_stats_$stat"} = $count;
        }
    }
}

# Parse resolver statistics
sub parse_resolver_statistics {
    my ($self, $content) = @_;
    
    if ($content =~ /\+\+\+ Resolver Statistics \+\+\+(.*?)\+\+\+/s) {
        my $section = $1;
        
        # Parse queries section
        if ($section =~ /\[Common\](.*?)\[/s) {
            my $common = $1;
            while ($common =~ /\s+(\d+)\s+(.+?)$/mg) {
                my ($count, $stat) = ($1, $2);
                $stat =~ s/\s+/_/g;
                $stat =~ s/[^\w_]//g;
                $self->{cache}{"resolver_$stat"} = $count;
            }
        }
    }
}

# Get a specific statistic value
sub get_stat {
    my ($self, $key) = @_;
    
    # Update cache if needed
    $self->collect_stats();
    
    return $self->{cache}{$key} || 0;
}

# Get all statistics
sub get_all_stats {
    my ($self) = @_;
    
    # Update cache if needed
    $self->collect_stats();
    
    return { %{$self->{cache}} };
}

# Alias for compatibility
sub get_stats {
    my ($self, $force) = @_;
    $self->collect_stats($force) if $force;
    return $self->get_all_stats();
}

1;

__END__

=head1 NAME

SNMP::BIND9::Statistics - Collect and parse BIND9 statistics

=head1 SYNOPSIS

    use SNMP::BIND9::Statistics;
    
    my $stats = SNMP::BIND9::Statistics->new(
        stats_file => '/var/cache/bind/named.stats',
        rndc_command => 'rndc stats',
        poll_interval => 300,
    );
    
    my $all_stats = $stats->get_all_stats();
    my $queries = $stats->get_stat('incoming_queries_A');

=head1 DESCRIPTION

This module collects and parses statistics from BIND9 DNS server.

=head1 METHODS

=head2 new(%args)

Create a new Statistics object.

=head2 collect_stats($force)

Collect statistics from BIND9, optionally forcing an update.

=head2 get_stat($key)

Get a specific statistic value.

=head2 get_all_stats()

Get all collected statistics.

=head1 AUTHOR

Thomas Vincent

=head1 LICENSE

MIT License

=cut
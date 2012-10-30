#!/usr/bin/perl
use strict;
use warnings;
use TAP::Runner;
use TAP::Runner::Test;

my $test1 = TAP::Runner::Test->new(
    file           => 't/test1.t',
    alias          => 'Testing google 1',
    args           => [
        qw( --browser_url http://google.com ),
    ],
    options        => [ # TAP::Runner::Option - coerced
        {
            name        => '--port',
            values      => [ 4444, 5555 ],
            multiple    => 1,
            parallel    => 1,
        }
    ],
);

my $test2 = TAP::Runner::Test->new(
    file           => 't/test2.t',
    alias          => 'Testing google 2',
    args           => [
        qw( --browser_url http://google.com ),
    ],
    options        => [ # TAP::Runner::Option - coerced
        {
            name        => '--search_text',
            values      => [ 'Selenium', 'TAP::Runner' ],
            multiple    => 1,
            parallel    => 0,
        }
    ],
);

my $runner = TAP::Runner->new(
    # harness_class     => 'TAP::Harness',         # Set by default
    # harness_formatter => 'TAP::Formatter::HTML', # Console is default
    tests             => [
        $test1, # TAP::Runner::Test
        $test2, # TAP::Runner::Test
    ],
);

$runner->run

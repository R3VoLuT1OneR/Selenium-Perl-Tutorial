#!/usr/bin/perl
use warnings;
use strict;
use TAP::Harness;

my @tests = ( 't/test1.t', 't/test2.t' );

my %args  = (
    formatter_class => 'TAP::Formatter::HTML',
    test_args => {
        't/test1.t' => [
            '--browser_url' => 'http://google.com',
        ],
        't/test2.t' => [
            '--browser_url' => 'http://google.com',
            '--search_text' => 'Selenium',
        ],
    },
);

my $harness = TAP::Harness->new( \%args );
$harness->runtests( @tests );

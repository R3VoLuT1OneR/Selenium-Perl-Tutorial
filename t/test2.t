use strict;
use warnings;
use lib 'lib';
use Test::More;
use Test::Selenium::Google;

my $selenium    = Test::Selenium::Google->new_with_options;
my $search_text = $selenium->search_text;

plan tests => 3;

    $selenium

        # Open index page
        ->open_ok('/')

        # Print text in the input
        ->type_ok( 'q', $search_text )

        # Click on button
        ->click_ok( 'btnG' );

    sleep(5);

done_testing;

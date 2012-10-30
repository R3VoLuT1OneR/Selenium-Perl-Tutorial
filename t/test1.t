use strict;
use warnings;
use lib 'lib';
use Test::More tests => 3;
use Test::Selenium;

Test::Selenium->new_with_options

    # Open index page
    ->open_ok('/')

    # Print text in the input
    ->type_ok( 'q', 'Selenium' )

    # Click on button
    ->click_ok( 'btnG' );

sleep(5);

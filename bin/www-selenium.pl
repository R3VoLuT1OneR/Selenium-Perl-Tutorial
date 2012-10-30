#!/usr/bin/perl
use warnings;
use strict;

use WWW::Selenium;

my $sel = WWW::Selenium->new(
    host => "localhost",
    port => 4444,
    browser => "*firefox",
    browser_url => "http://www.google.com",
);

$sel->start;
$sel->open("http://www.google.com");
$sel->type("q", "hello world");
$sel->click("btnG");
# $sel->wait_for_page_to_load(5000);
sleep 5;
print $sel->get_title;
$sel->stop;

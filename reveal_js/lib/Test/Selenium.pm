package Test::Selenium;
use Moose;
extends 'Test::WWW::Selenium::More';
with 'MooseX::Getopt';




no Moose;
__PACKAGE__->meta->make_immutable;
1;

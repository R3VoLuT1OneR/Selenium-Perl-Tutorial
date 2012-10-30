package Test::Selenium;
use Moose;
extends 'Test::WWW::Selenium::More';
with 'MooseX::Getopt';
with 'MooseX::SimpleConfig';



no Moose;
__PACKAGE__->meta->make_immutable;
1;

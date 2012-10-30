package Test::Selenium::Google;
use Moose;
extends 'Test::Selenium';

has search_text => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

no Moose;
__PACKAGE__->meta->make_immutable;
1;

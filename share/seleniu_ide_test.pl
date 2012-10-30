use strict;
use warnings;
use Time::HiRes qw(sleep);
use Test::WWW::Selenium;
use Test::More "no_plan";
use Test::Exception;

my $sel = Test::WWW::Selenium->new( host => "localhost", 
                                    port => 4444, 
                                    browser => "*chrome", 
                                    browser_url => "http://www.google.co.il/" );

$sel->open_ok("/");
$sel->type_ok("id=gbqfq", "Selenium");
WAIT: {
    for (1..60) {
        if (eval { "Selenium - Web Browser Automation" eq $sel->get_text("link=Selenium - Web Browser Automation") }) { pass; last WAIT }
        sleep(1);
    }
    fail("timeout");
}
$sel->click_ok("link=Selenium - Web Browser Automation");
$sel->wait_for_page_to_load_ok("30000");
$sel->title_is("Selenium - Web Browser Automation");
$sel->is_element_present_ok("id=submit");

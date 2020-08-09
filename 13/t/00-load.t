#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 3;

BEGIN {
    use_ok( 'Cow' ) || print "Bail out!\n";
    use_ok( 'Horse' ) || print "Bail out!\n";
    use_ok( 'Sheep' ) || print "Bail out!\n";
}

diag( "Testing Cow $Cow::VERSION, Perl $], $^X" );

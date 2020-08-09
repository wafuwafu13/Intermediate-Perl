package Cow;

use 5.10.1;
use strict;
use warnings;
use Animal;

use parent qw(Animal);

# sub speak {
#   print "a Cow goes moooo!\n";
# }

sub sound { "moooo" }

1; # End of Cow

use Cow;
use Horse;
use Sheep;

use strict;
use warnings;

# Cow::speak;
# Horse::speak;
# Sheep::speak;

my @pasture = qw(Cow Cow Horse Sheep Sheep);

foreach my $beast (@pasture) {
    $beast->speak;
}

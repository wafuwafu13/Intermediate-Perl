use Horse;
use v5.10;

my $talking = Horse->new( name => "Mr. Ed");
$talking->color( "grey" );

say $talking->name, " is colord ", $talking->color; # Mr. Ed is colordgrey
$talking->speak; # Mr. Ed goes neigh


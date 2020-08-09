use Horse;

# my $name = 'Mr. Ed';
# my $tv_horse = \$name;

# bless $tv_horse, 'Horse';

print Horse->name, "\n"; # an unnamed Horse

my $tv_horse = Horse->named('Mr. Ed');
print $tv_horse->name, " says ", $tv_horse->sound, "\n"; # Mr. Ed says neigh

print $tv_horse->speak; # Mr. Ed goes neigh!

$tv_horse->color('black-and-white');
print $tv_horse->name, ' is colored ', $tv_horse->color, "\n"; # Mr. Ed is colored black-and-white

if ($tv_horse->DOES('Animal')) {
    print $tv_horse->name, " is an Animal.\n";
    if ($tv_horse->DOES('Horse')) {
        print "In fact, ", $tv_horse->name, "is a Horse\n";
    }
} 
use Horse;
use Sheep;

my $tv_horse = Horse->named('Mr. Ed');
$tv_horse->eat('hay'); # Mr. Ed eats hay.
Sheep->eat('grass'); # an unnamed Sheep eats grass.

my $lost = bless { Name => 'Bo', Color => 'white' }, 'Sheep';
$lost->eat('grass'); # Bo eats grass.

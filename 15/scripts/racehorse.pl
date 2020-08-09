use RaceHorse;
my $racer = RaceHorse->named('Billy Boy');

$racer->won;
$racer->won;
$racer->showed;
$racer->lost;

print $racer->name, ' has standings of: ', $racer->standings, ".\n";
# Billy Boy has standings of: 2 wins, 0 places, 1 shows, 1 losses.

my %gilligan_info = (
    name => 'Gilligan',
    hat => 'White',
    shirt => 'Red',
    position => 'First Mate',
);

my %skipper_info = (
    name => 'Skipper',
    hat => 'Black',
    shirt => 'Blue',
    position => 'Captain',
);

my @crew = (\%gilligan_info, \%skipper_info);

my $format = "%-15s %-7s %-7s %-15s\n";

for my $crewmember (@crew) {
    printf $format, @$crewmember{qw(name shirt hat positon)};
}

# Gilligan        Red     White
# Skipper         Blue    Black

sub skipper_greets {
    my $person = shift;
    print "Skipper: Hey there, $person!\n"
}

my %greets = (
    Skipper => \&skipper_greets
);

$greets{Skipper}('Gilligan');
$greets{Skipper}->('Gilligan'); # Skipper: Hey there, Gilligan!

my $ginger = sub {
    my $person = shift;
    print "Ginger: (in a sultry voice) Well hello, $person!\n";
};
$ginger->('Skipper'); # Ginger: (in a sultry voice) Well hello, Skipper!

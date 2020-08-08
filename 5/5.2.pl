my $ref;

{
    my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
    $ref = \@skipper;

    print "$ref->[2]\n"
}

print "$ref->[2]\n";

package Animal;

sub name {
    # my $self = shift;
    # $$self;
    my $either = shift;
    ref $either
      ? $either->{Name}
      : "an unnamed $either";
}

sub named {
    my $class = shift;
    my $name = shift;
    my $self = { Name => $name, Color => $class->default_color };
    # bless \$name, $class;
    bless $self, $class;
}

sub speak {
    my $either = shift;
    print $either->name, " goes ", $either->sound, "!\n";
}

sub eat {
    my $either = shift;
    my $food = shift;
    print $either->name, " eats $food.\n";
}

sub default_color { 'brown' }

# sub color {
#     my $self = shift;
#     $self->{Color};
# }

# sub set_color {
#     my $self = shift;
#     $self->{Color} = shift;
# }

sub color {
    my $self = shift;
    if (@_) {
        $self->{Color} = shift;
    } else {
        $self->{Color};
    }
}
sub sound {
    die 'You have to define sound() in a subclass'
}

1;
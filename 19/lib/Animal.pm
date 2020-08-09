package Animal;
use Moose::Role;

has 'name' => ( is => 'rw');
has 'color' => (
     is => 'rw',
     default => sub { shift->default_color }
);
has 'sound' => ( is => 'ro', default => sub {
    confess shift, " needs to define sound!"
});

sub speak {
    my $self = shift;
    print $self->name, " goes ", $self->sound, "\n";
}

1;

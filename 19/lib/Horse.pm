package Horse;
use Moose;

with 'Animal';

sub default_color { 'spotted' }
has 'sound' => ( is => 'ro', default => 'neigh' );

__PACKAGE__->meta->make_immutable;

1;

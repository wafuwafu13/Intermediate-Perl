package Mouse;
use Moose;

with 'Animal';

sub default_color { 'white' }
sub sound { 'squeak' }
has 'sound' => ( is => 'ro', default => 'squeak' );

after 'speak' => sub {
    print "[but you can barely hear it]\n";
};

__PACKAGE__->meta->make_immutable;
1;

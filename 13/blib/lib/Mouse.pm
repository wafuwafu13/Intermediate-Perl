package Mouse;
use parent qw(Animal);

sub sound { 'squeak' }

sub speak {
    my $class = shift;
    $class->Animal::speak;
    $class->SUPER::speak;
    print "[but you can barely hear it!]"
}

1;
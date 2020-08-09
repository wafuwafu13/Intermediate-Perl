package Horse;
use parent qw(Animal);

sub sound { 'neigh' }

1;

# sub name {
#     my $self = shift;
#     $$self;
# }

# sub named {
#     my $class = shift;
#     my $name = shift;
#     bless \$name, $class;
# }
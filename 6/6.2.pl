use Data::Dumper;
$Data::Dumper::Purity = 1;
my @data1 = qw(one won);
my @data2 = qw(two too to);
push @data2, \@data1;
push @data1, \@data2;
print Dumper(\@data1, \@data2);

# $VAR1 = [
#           'one',
#           'won',
#           [
#             'two',
#             'too',
#             'to',
#             []
#           ]
#         ];
# $VAR1->[2][3] = $VAR1;
# $VAR2 = $VAR1->[2];

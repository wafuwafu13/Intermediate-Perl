@input_numbers = qw/ 1 13 15 16 /;

my @odd_digit_sum = grep {
    my $input = $_;
    my @digits = split //, $input;
    my $sum;
    $sum += $_ for @digits;
    $sum % 2;
} @input_numbers; # 1 16

my @result = map { split // } @input_numbers; # 1 1 3 1 5 1 6

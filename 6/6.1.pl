# 1 hoge 1250
# 2 fuga 910
# 3 fuga 1250
# 1 fuga 450
# 1 piyo 2924

# < perl -d 6.1.pl

use Data::Dumper;

my %total_bytes;
while (<>) {
    my ($source, $destination, $bytes) = split;
    $total_bytes{$source}{$destination} += $bytes;
}

print Dumper(\%total_bytes);

for my $source (sort keys %total_bytes) {
    for my $destination (sort keys %{ $total_bytes{$source} }) {
        print "$source => $destination:",
        " $total_bytes{$source}{$destination} bytes\n";
    }
    print "\n";
}

# 1 => fuga: 450 bytes
# 1 => hoge: 1250 bytes
# 1 => piyo: 2924 bytes

# 2 => fuga: 910 bytes

# 3 => fuga: 1250 bytes

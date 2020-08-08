use v5.10;

my @array = qw( a b c d e 1 2 3 );

print sort {
    state $n = 0;
    print $n++, ": a[$a] b[$b]\n";
    $a cmp $b;
} @array;

# 0: a[a] b[b]
# 1: a[c] b[d]
# 2: a[e] b[1]
# 3: a[2] b[3]
# 4: a[a] b[c]
# 5: a[c] b[b]
# 6: a[1] b[2]
# 7: a[2] b[e]
# 8: a[e] b[3]
# 9: a[a] b[1]
# 10: a[a] b[2]
# 11: a[a] b[3]
# 12: a[a] b[e]
# 13: a[b] b[e]
# 14: a[e] b[c]
# 15: a[e] b[d]
# 123abcde

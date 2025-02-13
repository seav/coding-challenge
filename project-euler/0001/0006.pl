#!/usr/bin/env perl

# Problem 6: Sum Square Difference
#
# The sum of the squares of the first ten natural numbers is,
#   1² + 2² + ... + 10² = 385.
#
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)² = 55² = 3025.
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

use utf8;
use 5.36.0;

use List::Util qw(sum);

my $n = 100;

my $sum_of_squares = sum (map { $_ ** 2 } (1 .. $n));

my $square_of_sum = (sum 1 .. $n) ** 2;

say $square_of_sum - $sum_of_squares;

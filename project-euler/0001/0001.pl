#!/usr/bin/env perl

# Problem 1: Multiples of 3 or 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6, and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

use utf8;
use v5.36.0;

my $sum = 0;
foreach my $num (1..999) {
  $sum += $num if $num % 3 == 0 || $num % 5 == 0;
}
say $sum;

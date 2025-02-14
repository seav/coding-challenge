#!/usr/bin/env perl

# Problem 9: Special Pythagorean Triplet
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#   a² + b² = c²
#
# For example, 3² + 4² = 9 + 16 = 25 = 5².
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

use utf8;
use v5.36.0;

my $sum = 1000;

for my $a (1 .. $sum - 2) {
  for my $b (1 .. $sum - $a - 1) {
    my $c = $sum - $a - $b;
    if ($a**2 + $b**2 == $c**2) {
      say $a * $b * $c;
      exit;
    }
  }
}

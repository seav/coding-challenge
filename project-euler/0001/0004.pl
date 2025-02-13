#!/usr/bin/env perl

# Problem 4: Largest Palindrome Product
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

use utf8;
use 5.36.0;

my $largest = 0;
for (my $i = 999; $i >= 100; $i--) {
  for (my $j = 999; $j >= $i; $j--) {
    my $p = $i * $j;
    $largest = $p if $p eq reverse $p and $p > $largest;
  }
}
say $largest;

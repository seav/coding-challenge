#!/usr/bin/env perl

# Problem 2: Even Fibonacci Numbers
#
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

use utf8;
use v5.36.0;

my $sum = 0;
my $fib1 = 1;
my $fib2 = 2;
while ($fib2 < 4_000_000) {
  $sum += $fib2 if $fib2 % 2 == 0;
  ($fib1, $fib2) = ($fib2, $fib1 + $fib2);
}
say $sum;

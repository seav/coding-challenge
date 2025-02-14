#!/usr/bin/env perl

# Problem 16: Power Digit Sum
#
# 2¹⁵ = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2¹⁰⁰⁰?

use utf8;
use 5.36.0;

use Math::BigInt;
use List::Util qw(sum);

use constant EXPONENT => 1000;

# Since 2¹⁰⁰⁰ is too large to fit in a 64-bit integer, let's do manual
# exponentiation.

# The index corresponds to the power of 10
my @digits = (1);

for my $i (1 .. EXPONENT) {
  my $carry = 0;
  for my $j (0 .. $#digits) {
    $digits[$j] = $digits[$j] * 2 + $carry;
    if ($digits[$j] >= 10) {
      $carry = int($digits[$j] / 10);
      $digits[$j] %= 10;
      if ($j == $#digits) {
        push @digits, $carry;
      }
    }
    else {
      $carry = 0;
    }
  }
}

say sum(@digits);

# Use Math::BigInt to double-check the result
my $control_power = Math::BigInt->new(2)->bpow(1000);

die "Incorrect result" if sum(split //, $control_power) != sum(@digits);

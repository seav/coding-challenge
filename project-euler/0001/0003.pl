#!/usr/bin/env perl

# Problem 3: Largest Prime Factor
#
# The prime factors of 13195 are 5, 7, 13, and 29.
#
# What is the largest prime factor of the number 600,851,475,143?

use utf8;
use 5.36.0;

use Math::Prime::Util qw(factor);

my $number = 600_851_475_143;

# Get all factors and sort them
my @factors = (1);
for my $i (2 .. sqrt($number)) {
  if ($number % $i == 0) {
    push @factors, $i;
    push @factors, $number / $i;
  }
}
@factors = sort {$a <=> $b} @factors;

# Test each factor to see if it's prime
my $largest_prime_factor;
for my $i (reverse @factors) {

  my $is_prime = 1;
  my $j = 2;

  # Naïve primality test
  while ($j <= sqrt($i)) {
    if ($i % $j == 0) {
      $is_prime = 0;
      last;
    }
    $j++;
  }

  if ($is_prime) {
    $largest_prime_factor = $i;
    last;
  }
}

# Use Math::Prime::Util's factor() to double-check the result
my @control_factors = factor($number);

die "Incorrect result" if $control_factors[-1] != $largest_prime_factor;

say $largest_prime_factor;

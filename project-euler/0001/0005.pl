#!/usr/bin/env perl

# Problem 5: Smallest Multiple
#
# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

use utf8;
use 5.36.0;

# If the target number is much larger, I would construct a list of prime numbers
# but since the target is small, I will hardcode the prime numbers less than 20
my @PRIMES = (2, 3, 5, 7, 11, 13, 17, 19);

my $TARGET = 20;

my @factorization = (0) x scalar @PRIMES;

sub factorize {
  my $n = shift;
  my @num_primes = (0) x scalar @PRIMES;
  my $prime_idx = 0;
  while ($n > 1) {
    if ($n % $PRIMES[$prime_idx] == 0) {
      $num_primes[$prime_idx]++;
      $n /= $PRIMES[$prime_idx];
    }
    else {
      $prime_idx++;
    }
  }
  return @num_primes;
}

for my $i (2 .. $TARGET) {
  my @num_primes = factorize($i);
  for my $prime_idx (0 .. $#PRIMES) {
    if ($num_primes[$prime_idx] > $factorization[$prime_idx]) {
      $factorization[$prime_idx] = $num_primes[$prime_idx];
    }
  }
}

my $result = 1;
for my $prime_idx (0 .. $#PRIMES) {
  $result *= $PRIMES[$prime_idx] ** $factorization[$prime_idx];
}
say $result;

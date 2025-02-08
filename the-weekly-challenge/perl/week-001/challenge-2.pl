#!/usr/bin/env perl

# Challenge #2
# Write a one-liner to solve the FizzBuzz problem and print the numbers 1
# through 20. However, any number divisible by 3 should be replaced by the word
# ‘fizz’ and any divisible by 5 by the word ‘buzz’. Those numbers that are both
# divisible by 3 and 5 become ‘fizzbuzz’.

use utf8;
use 5.36.0;

(say $_ % 15 == 0 ? 'fizzbuzz' : $_ % 3 == 0 ? 'fizz' : $_ % 5 == 0 ? 'buzz' : $_) for (1..20);

# Note: This solution would be more elegant and readable if the one-liner
# restriction is relaxed as in:
# 
# foreach my $num (1..20) {
#     my $output = '';
#     $output .= 'fizz' if $num % 3 == 0;
#     $output .= 'buzz' if $num % 5 == 0;
#     $output ||= $num;
#     say $output
# } 

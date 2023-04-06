#!/usr/bin/env perl

# Challenge #1
# Write a script to replace the character ‘e’ with ‘E’ in the string ‘Perl
# Weekly Challenge’. Also print the number of times the character ‘e’ is found
# in the string.

use utf8;
use 5.36.0;

my $string = 'Perl Weekly Challenge';

my $num_substitutions = $string =~ s/e/E/g;

say $string;
say $num_substitutions;

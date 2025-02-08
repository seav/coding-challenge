#!/usr/bin/env perl

use utf8;
use 5.36.0;
use Test2::V0;
use File::Basename;

my $dirpath = dirname(__FILE__);

my $actual = `perl $dirpath/challenge-2.pl`;

my $expected = <<'END';
1
2
fizz
4
buzz
fizz
7
8
fizz
buzz
11
fizz
13
14
fizzbuzz
16
17
fizz
19
buzz
END

is($actual, $expected, 'Week 1 Challenge 2 script output is correct');

done_testing;

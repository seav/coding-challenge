#!/usr/bin/env perl

use utf8;
use 5.36.0;
use Test2::V0;
use File::Basename;

my $dirpath = dirname(__FILE__);

my $actual = `perl $dirpath/challenge-1.pl`;

my $expected = "PErl WEEkly ChallEngE\n5\n";

is($actual, $expected, 'Week 1 Challenge 1 script output is correct');

done_testing;

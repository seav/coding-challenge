#!/usr/bin/env perl

# Problem 19: Counting Sundays
#
# You are given the following information, but you may prefer to do some
# research for yourself.
#
#   • 1 Jan 1900 was a Monday.
#   • Thirty days has September,
#     April, June and November.
#     All the rest have thirty-one,
#     Saving February alone,
#     Which has twenty-eight, rain or shine.
#     And on leap years, twenty-nine.
#   • A leap year occurs on any year evenly divisible by 4, but not on a
#     century unless it is divisible by 400.
#
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?

use utf8;
use v5.36.0;

# NOTE: Convention is to use 0 for Sunday, 1 for Monday, ..., 6 for Saturday.

my @DAYS_IN_MONTH = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

sub is_leap {
  my $year = shift;
  return 1 if $year % 400 == 0;
  return 0 if $year % 100 == 0;
  return 1 if $year % 4 == 0;
  return 0;
}

my $current_weekday = 1;  # 1 Jan 1900 was a Monday
my $num_sundays = 0;
for my $year (1900 .. 2000) {
  for my $month (0 .. 11) {

    $num_sundays++ if $current_weekday == 0 and $year > 1900;

    # Compute the next 1st-of-month's weekday
    $current_weekday += $DAYS_IN_MONTH[$month];
    $current_weekday++ if $month == 1 and is_leap($year);
    $current_weekday %= 7;
  }
}

say $num_sundays;

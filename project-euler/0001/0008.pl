#!/usr/bin/env perl

# Problem 8: Largest Product in a Series
#
# The four adjacent digits in the 1000-digit number that have the greatest
# product are 9 × 9 × 8 × 9 = 5832.
#
#   <some 1000-digit number>
#
# Find the thirteen adjacent digits in the 1000-digit number that have the
# greatest product. What is the value of this product?

use utf8;
use 5.36.0;

use List::Util qw(product);

my $num_adjacent_digits = 13;

my $number =
  '7316717653133062491922511967442657474235' .
  '5349194934969835203127745063262395783180' .
  '1698480186947885184385861560789112949495' .
  '4595017379583319528532088055111254069874' .
  '7158523863050715693290963295227443043557' .
  '6689664895044524452316173185640309871112' .
  '1722383113622298934233803081353362766142' .
  '8280644448664523874930358907296290491560' .
  '4407723907138105158593079608667017242712' .
  '1883998797908792274921901699720888093776' .
  '6572733300105336788122023542180975125454' .
  '0594752243525849077116705560136048395864' .
  '4670632441572215539753697817977846174064' .
  '9551492908625693219784686224828397224137' .
  '5657056057490261407972968652414535100474' .
  '8216637048440319989000889524345065854122' .
  '7588666881164271714799244429282308634656' .
  '7481391912316282458617866458359124566529' .
  '4765456828489128831426076900422421902267' .
  '1055626321111109370544217506941658960408' .
  '0719840385096245544436298123098787992724' .
  '4284909188845801561660979191338754992005' .
  '2406368991256071760605886116467109405077' .
  '5410022569831552000559357297257163626956' .
  '1882670428252483600823257530420752963450';

my @digits = split //, $number;

my $max_product = 0;

for my $idx (0 .. $#digits - $num_adjacent_digits + 1) {
  my $product = product @digits[$idx .. $idx + $num_adjacent_digits - 1];
  $max_product = $product if $product > $max_product;
}

say $max_product;

#!perl-w
use warnings;
use strict;
sub by_number{
    if($a<$b){
        return -1;
    }elsif($a>$b){
        return 1;
    }else{
        return 0;
    }
}
sub by_number2{
    $b<=>$a;#飞船操作符 短视
    }

my @some_number = qw(1 2 44 3 2 5 6 7 345 3 4 -4 32);
my @result = sort by_number @some_number;
print "@result\n";
my @result2 = sort by_number2 @some_number;
print "@result2\n";

sub by_code_point { $a cmp $b}
sub by_code_point_without_LH{ "\L$a" cmp "\L$b"};
my @any_strings = qw(asd fgh jkl qwe ta a ab aa AA Z nvs);
my @strings = sort by_code_point @any_strings;
my @strings2 = sort by_code_point_without_LH @any_strings;
print "@strings\n";
print "@strings2\n";

my %score = ("barney"=> 195,"fred" => 205,"dino"=>30,"bamm"=>195);
sub by_score { $score{$b} <=> $score{$a}
              or
              $a cmp $b;
              };
my @winners = sort by_score keys %score;
print "@winners";

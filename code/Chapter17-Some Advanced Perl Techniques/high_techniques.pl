#!perl-w
use warnings;
use strict;
use List::Util;
#split
my @names = qw(1 2 3 4 5 6 7 8 9 0);
my @select = @names[2,5,9,1];
print @select;
print "\n";
#hash split
my %scores = ('a'=>100,'b'=>80,'c'=>110,'d'=>-10);
my @players = qw/barney fred dino/;
my @bowling_scores = (195,205,30);
@scores{@players} = @bowling_scores;
my @two_scores = @scores{qw/a b fred/};
print "@two_scores\n";

#eval
my ($bar,$fre,$dino) = (1,5,0);
eval{print $fre/$dino."\n"};
print "well shut\n";

#grep
my @odd_numbers = grep {$_ %2} 1..1000;
print"@odd_numbers\n";
#map
sub big_money {
    my $number = sprintf "%.2f",shift @_;
    while ($number =~ s/^(-?\d+)(\d\d\d)/$1,$2/){
        1;
    #print "$number is combined by $1 and $2\n";
    }
    #print "$number\n";
    $number =~ s/^(-?)/$1\$/;
    #print "$number\n";
    $number;
}
my @data = (4.75,1.5,2,1234,6.9456,12345678.9,29.95);
my @formatted_data = map {&big_money($_)} @data;
foreach(@formatted_data){
    print "$_\n";
}
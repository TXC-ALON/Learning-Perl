#!perl-w
use strict;
=pod
#codes to comment
while(<STDIN>){
    print "I saw $_";
}

while(<>){
    chomp;
    print "It was $_ that I saw !\n";
}
printf "%g %g %g\n",5/2,51/17,51**17;
printf "%-30s %s 50%%\n","while","us";
my $s = 2x3;
printf "$s\n";
=cut


my @items = qw(wilma dino pebbles);
my $format = "The items are :\n" . ("%10s\n" x @items);
printf $format,@items;
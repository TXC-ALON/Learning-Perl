#!perl-w

=pod
$_ = "  He is   out bowling with   Barney   tonight.   ";
#s/Barney/Fred/;
#s/with (\w+)/against $1's team/;
s/^\s+|\s+$//g;
s/\s+/ /g;
print "$_\n";
=cut

#no loss sub
=pod
my $origin = 'Fred ate 1 rib';
my $copy =$origin;
$copy =~ s/\d+ ribs?/10 ribs/;
print "$copy";
=cut
#Upper Lower
$_ = "I saw aaBar and FRa";
s/(aaBar|FRA)/\u\L$1/gi;
print "$_\n";
#!perl-w
my $stuff = "Howdy world!";
my $where1 = index($stuff,"w");
my $where2 = index($stuff,"w",$where1 + 1);
my $where3 = index($stuff,"w",$where2 + 1);
print "$where1  $where2  $where3\n";

my $mineral = substr("this is a beautifull world.",10,10);
print "$mineral\n";

sub big_money {
    my $number = sprintf "%.2f",shift @_;
    while ($number =~ s/^(-?\d+)(\d\d\d)/$1_$2/){
    print "$number is combined by $1 and $2\n";
    }
    print "$number\n";
    $number =~ s/^(-?)/$1\#/;
    print "$number\n";
    $number;
}

big_money(-1110123456789.12345);
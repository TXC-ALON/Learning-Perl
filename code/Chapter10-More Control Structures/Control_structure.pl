#!perl-w
=pod
$n = -1;
print "n is a negetive number" if $n<0;
while (<STDIN>){
    if(/_END_/){
        print"end\n";
        last;
    }elsif(/fred/){
        print;
    }
}
=cut
#redo
=pod
my @words = qw( fred barney pebbles dino wilma betty);
my $errors = 0;
foreach (@words){
    print "type the word '$_': ";
    chomp(my $try = <STDIN>);
    if($try ne $_){
        print "Sorry - That's not right.\n\n";
        $errors++;
        redo;
    }
}
print "complete , with $errors errors.\n";
=cut
use 5.010;
foreach my $try (0,undef,'0',1,25){
    print "$try --->  ";
    my $value = $try // 'default';
    say "\t got [$value]";
}
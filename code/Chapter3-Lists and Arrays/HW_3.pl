#!perl-w

#$1
=pod
print "enter some lines ,and press Ctrl+D";
print reverse<STDIN>;
=cut

#$2
=pod
@names = qw / fred betty barney dino wilma pebbles bamm-bamm /;
print "enter some numbers from 1-7:\n";
chomp(@numbers = <STDIN>);
foreach (@numbers){
    print "$names[$_ - 1]\n";
}
=cut

#$3
print sort <STDIN>;

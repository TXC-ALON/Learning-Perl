#!perl-w
use strict;
use warnings;

#print reverse <bet sd a aaw>;
#$2
=pod
print "Enter some lines ,then press Ctrl + D\n";
chomp(my @lines = <STDIN>);
print "1234567890" x 7,"12345\n";
foreach (@lines){
    printf"%20s\n",$_;
}
=cut
#$3
print "please enter width\n";
chomp(my $width = <STDIN>);
print "pleas enter some lines ,then press Ctrl+D\n";
chomp(my @lines = <STDIN>);
print "1234567890" x (($width+9)/10),"\n";
foreach(@lines){
    printf"%${width}s\n",$_;
}
#!perl-w
use strict;
=pod
open(DATA, "<file.txt") or die "file.txt 文件无法打开, $!";
 
while(<DATA>){
   print "$_";
}
=cut
chomp(my @lines = <STDIN>);
print "1234567890" x 7 ,"12345\n";
foreach(@lines){
    printf "%20s\n",$_;
}
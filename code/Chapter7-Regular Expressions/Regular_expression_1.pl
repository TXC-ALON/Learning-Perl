#!perl-w
=my $_ = "yabba dabba doo";
if(/abba/){
    print "It is matched!\n";
}
$_ = 'a real \\ backslash';
if (/\\/){
    print "there is \\ \n";
}
=cut
=use 5.010;
$_ = "aaa22bb";
if (/(.)\1{22}22/){
    print "it is matched";
}
else{
    print "no no";
}
=cut
$_ = "The HAL-9000 requires authorization to continue.";
if(/HAL-[0-9]+/){
    print "The string mentions some model of HAL computer.\n";
}
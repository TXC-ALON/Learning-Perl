#!perl-w
$line = <STDIN>;
if ($line eq "\n") { 
    print "that is a blank line";
}
else{
    print "that line of input is $line";
}
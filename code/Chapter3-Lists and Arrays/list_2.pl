#!perl-w
@fred = qw(eating rock is wrong);
$fred = "right";
print "this is $fred[3]\n";
print "this is ${fred}[3]\n";
print "this is $fred"."[3]\n";
print "this is $fred\[3]\n";
@rocks = qw (bedrock slate lava);
foreach $rock (@rocks){
    $rock = "\t$rock\n";
    print "one rock is $rock";
}
print"@rocks";
foreach(1..10){
    $_ = $_*10;
    print "I can count to $_!\n";
}
use 5.012;
my @mrocks = qw(asdf qwer zxcv ghjk);
print"@mrocks\n";
while(my($index,$value) = each@mrocks){
    say "$index:$value";
}
#!perl-w

#$1
=pod
$pi = 3.1415926;
$circ = 12.5*2*$pi;
printf '%.1f\n',$circ;
=cut

#$2/3
=pod
$pi = 3.1415926;
print "enter the radius: ";
chomp ($radius = <STDIN>);
$circ = 2*$pi*$radius;
if($radius < 0){
    $circ = 0;
}
print "The $radius is $circ.\n";
=cut

#$4
=pod
print "please enter two numbers\n";
print "here is the first number\n";
chomp($one = <STDIN>);
print "here is the second number\n";
chomp($two = <STDIN>);
$result = $one*$two;
print "The result is $result.\n";
=cut

#$5
print "please enter one string and one number\n";
print "here is the string\n";
#chomp($str = <STDIN>);
$str = <STDIN>;
print "here is the number\n";
chomp($num = <STDIN>);
$result = $str x $num;
print "The result is \n$result";

#!perl-w
print "hello" . "world";
$a = '123fasljf2'*3;
#123后面的会被略过 = 369
print "\n";
print $a."\n";
$fred = 17;
$barney = 'hello';
$barney = $fred + 3;
$barney = $barney * 2;
print $barney.'\\n';
print "\n";
print "The answer of 4*5 is ",4*5," isn't right? ","\n";
print "\n";
$meal = "brontosaurus steak";
$barbe = "fred1 eat the $meal";
$barbe2 = 'fred2 eat the ' .$meal ." too";
print $barbe."\n";
print $barbe2 . "\n";

#!perl-w

=use strict;
my $some_other = "I dream of betty rubble";
if($some_other =~ /\brub/){
    print "here we are matched";
}
my $what = "larry";
while(<>){
    if(/\A($what)/){
        print "We saw $what in begining of $_";
    }
    else{
        print "no no\n";
    }
}
$_ = "Hello there,neighbor";
if(/(\S+) (\S+),(\S+)/){#注意这里的空格
    print "the word wa $1 $2 $3\n";
}
else{
    print "no no \n";
}
use 5.010;
my $names = 'Fred or Barney';
if( $names =~ m/(\w+) (and|or) (\w+)/ ){
    say "i saw $1 and $2";
}
else{
    print "no no \n";
}
use 5.010;
my $names = 'Fred or Barney';
if( $names =~ m/(?<name1>\w+) (and|or) (?<name2>\w+)/ ){
    say "i saw $+{name1} and $+{name2}";
}
else{
    print "no no \n";
}
=cut
use 5.010;
my $names = 'Fred Flintstone and Wilma Flintstone';
if( $names =~ m/(?<last_name>\w+) (and|or) \w+ \g{last_name}/ ){
    say "i saw $+{last_name}";
}
else{
    print "no no\n";
}





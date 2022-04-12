#!perl -w
use warnings;
use strict;
use 5.010001;
no warnings 'experimental::smartmatch';
my $name = "Fred";
say "I found Fred in the name! \n" if $name ~~ /Fred/;

my %some_names = ('foo',35,'good',120,'hello',34,'Fred is good',12,'Fred is suck',34);
=pod
my $flag = 0;
while (my($key,$value) = each %some_names){
    print "$key => $value\n";
    if($key =~ /Fred/){
        print "***i found a sentence matched the Fred is $flag ,and its value is $value\n";
    }
}
say "i found Fred" if %some_names ~~ /Fred/;
my $equal = 0;
my @names1 = qw(1 2 3 4 5 6 7 8);
my @names2 = qw(1 2 2 4 5 6 7 8);
say "they are the same !\n" if @names1 ~~ @names2;

given($ARGV[0]){
    when($_ ~~ 'Fred') {say "hello Fred\n"}
}

=cut
my @names = qw(Bernel ablert Bernel carl david franklin F);

foreach (@names){
    say "\nProcessing $_";
    when(/bernel/i) {say 'Name has bernel in it\n';continue}
    when(/\ABernel/) {say 'Name start with Bernel\n';continue}
    when('Bernel') {say 'Name is Bernel\n'}
    say "moving on to default...";
    default         {say "i can't see bernel"}#这里的default只管上面一个when
}
=pod
foreach(@names){ #不使用具名控制变量
    say "\nProcessing $_";
    
    when('fred'){say "1"; continue}  #continue使每个条件都能执行
    when(/Fred/i){say "2"; continue}
    when(/\AFred/){say "3"}
    say "moving on to default...";
    default {say "4"}
}
=cut
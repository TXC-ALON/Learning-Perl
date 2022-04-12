#!perl-w
use warnings;
use strict;
system 'date'."\n";
system 'ls E:\0Learning\Perl\Learning-Perl\code';
$_ = $ENV{'PATH'}.";
";
s/;/;\n/g;
my $path = $_;
print $path;

my $now = `date`;
print "now is $now\n";

my @functions = qw (int rand sleep);# length hex eof not exit sqrt umask);
my %about;
foreach(@functions){
    $about{$_} = `perldoc -t -f $_`;
    print $about{$_}."\n";
}
#my $outputwitherr = `frobnitz -enable 2>&1` ;



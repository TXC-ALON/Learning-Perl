#!perl-w
my $localtime = 1649630098;
my $date = localtime $localtime;
print "$date\n";
my $localtime2 = time;
print("$localtime2\n");
my $date2 = localtime $localtime2;
print "$date2\n";
my $localtime3 = gmtime;
my $date3 = localtime $localtime3;
print "$date3\n";
#Mon Apr 11 06:34:58 2022
#1649643143
#Mon Apr 11 10:12:23 2022
#Thu Jan  1 08:00:00 197

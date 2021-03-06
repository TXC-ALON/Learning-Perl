#!perl -w
=pod
use CGI qw(:all);
print header("text/plain");
foreach $param(param()){
    print "$param: " . param($param) . "\n";
}
=cut
#test CGI
=pod
use CGI qw(:all);
print header(),
    start_html("This is the page title");
    h1( "Input parameters");
my $list_items;
foreach my $param ( param()){
    $list_items .= li("$param: " . param($param));
}
print ul( $list_items );
print end_html();
=cut
use 5.010;
use DateTime;
my $dt = DateTime->from_epoch( epoch => time);
printf '%4d%02d%02d'."\n", $dt->year,$dt->month,$dt->day ;
print $dt->ymd."\n";
print $dt->ymd('/')."\n";
print $dt->ymd(' ')."\n";
print "\n";
my $dt1 = DateTime->new(                        
        year => 1998,
        month => 5,
        day => 14,
        );
my $dt2 = DateTime->new(                        
        year => 2022,
        month => 4,
        day => 8,
        );
print "$dt1\n";
print "$dt2\n";
my $duration = $dt2 - $dt1;
print "$duration\n";
my $sub = $dt2->subtract_datetime($dt1);
print "sub days: ".$sub->days."\n";
my @units = $duration->in_units( qw(year month day) );
printf '%d years, %d months ,and %d days',@units;







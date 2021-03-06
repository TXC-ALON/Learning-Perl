#!perl-w
use strict;

use DateTime;
use DateTime::Format::Duration;

# XXX: Create your two dates here
my $d1 = DateTime->new(
        year => 1998,
        month => 5,
        day => 14,
        );
my $d2 = DateTime->new(
        year => 2022,
        month => 04,
        day => 8,
        );

my $dur = ($d1 > $d2 ? ($d1->subtract_datetime_absolute($d2)) : 
                       ($d2->subtract_datetime_absolute($d1)));

my $f = DateTime::Format::Duration->new(pattern => 
  '%Y years, %m months, %e days, %H hours, %M minutes, %S seconds');

print $f->format_duration($dur), "\n";

$dur = $d1->delta_md($d2);

my $dy = int($dur->delta_months / 12);
my $dm = $dur->delta_months % 12;
print "$dy years $dm months ", $dur->delta_days, " days\n";
print $dur->delta_months, " months ", $dur->delta_days, " days\n";
print $d1->delta_days($d2)->delta_days, " days\n";
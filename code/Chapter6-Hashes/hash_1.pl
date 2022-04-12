#!perl
#key-value
$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';
foreach my $person(qw<barney fred>){
    print "I have heard of $person $family_name{$person}.\n";
}
$family_name{'betty'} .= $family_name{'barney'};
print "I also have heard of betty $family_name{'betty'}.\n";

print "\n";

%some_hash = ('foo',35,'bar',12.4,2.5,'hello',
              'willa',1.72e30,'betty',"bye\n");
@any_array = %some_hash;
print "@any_array\n";

my %last_name = (
    'fred' => 'flintstone',
    'dino' => 'undef',
    'barney' => 'rubble',
    'betty' => 'rubble2',
);
print "dino's last name is $last_name{'dino'}\n";
$hash{bar.foo} = 1;
$hash{'bar.foo'} = 2;
print "$hash{'barfoo'}\n";
print "$hash{'bar.foo'}";

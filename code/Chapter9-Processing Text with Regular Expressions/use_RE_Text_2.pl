#!perl-w
my @fields = split /:/, ":I:am:a:good::person::::";
my @digit = (1..12);
print "@digit\n";
print "@fields\n";
my $joint = join "##" , @fields;
print "$joint\n";
my $data = "Barne Rubble Fred Flin Wilma Flinstone";
my %last_name = ($data =~ /(\w+)\s+(\w+)/g);
while(($key,$value) = each %last_name){
    print "$key => $value\n";
}

#!perl-w
my %hash = (
    'a' => 1,
    'b' => 2,
    'c' 
);
#每次运行顺序不同，因为无法预测perl存储哈希的顺序
my @k = keys %hash;
my @v = values %hash;
print ("@k\n");
print ("@v\n");
#如果c的值不存在，内部存储是undef
my $count1 = keys %hash;
print $count1."\n";
my $count2 = values %hash;
print $count2."\n";
if($hash{'c'} == undef){
    print"c is undef\n\n";
}
#输出hash键值对
while(($key,$value) = each %hash){
    print "$key => $value\n";
}
print ("\n");
#按顺序输出键值对
foreach $key (sort keys %hash){
    $value = $hash{$key};
    print "$key => $value\n";
}
#输出PATH
print "PATH is $ENV{PATH}\n";
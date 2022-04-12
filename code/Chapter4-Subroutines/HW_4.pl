#!perl-w

#$1/2
=pod
sub total {
    my $sum;
    foreach(@_){
        $sum += $_;
    }
    $sum;
}
my @fred = qw{1 3 5 7 9};
my $fred_total = total(@fred);
print "the fred_sum = $fred_total\n";
print "the sum of 1-1000 is ",total(1..1000),".\n";
print "Enter some numbers on separate lines\n";
my $usr_total = total(<STDIN>);
print "the usr_total = $usr_total";
=cut

#$3
=pod
sub above_average{
    if(@_ == 0){return}
    my $sum;
    my $num = 0;
    my @result;
    foreach(@_){
        $num++;
        $sum += $_;
    }
    my $middle = $sum/$num;
    foreach(@_){
        if($_ > $middle){
            push(@result,$_);
        }
    }
    @result;
    
}
my @fred = above_average(1..10);
print "test average is @fred\n";
=cut

#$4/5
use 5.010;
greet('a');
greet('b');
greet('c');
greet('d');
sub greet{
    state @names;
    my $name = shift;#shift函数是取数组的第一个元素，缺省就取@_的第一个函数，
    #这句一般用在程序的开头，用于接收程序的参数，或者子函数的开头，用于接收子函数的参数。
    print "Hi $name! ";
    if(@names){
        print "I've seen: @names\n";
    }
    else{
        print "You are the first one here!\n";
    }
    push @names,$name;
}

















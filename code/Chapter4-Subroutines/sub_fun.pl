sub marine{
    $n+=1;
    print "Hello , sailor number is $n\n";
}
marine;
marine;
sub max{
    if($_[0] > $_[1]){
        $_[0];
    }
    else{
        $_[1];
    }
}
$nn = &max(10,15);
print "$nn\n";

sub longmax{
    my($max_so_far) = shift @_;
    foreach(@_){
        if($_ > $max_so_far){
            $max_so_far = $_;
        }
    }
    $max_so_far;
}
$nnn = &longmax(-1,23,14,89);
printf "$nnn\n";
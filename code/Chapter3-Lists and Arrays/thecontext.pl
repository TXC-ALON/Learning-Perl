#!perl-w
@people = qw(fred barney betty cobe);
@sorted = sort @people;
$number = 42 + @people;
print"@sorted\n";
print"$number";

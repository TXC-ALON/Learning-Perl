#!perl-w
$text = "a line of text\n";
chomp($text);
print $text."\n";
#chomp only delete the \n



chop $text;
print $text;
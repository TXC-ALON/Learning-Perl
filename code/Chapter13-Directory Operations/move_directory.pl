#!perl -w
# 显示 /tmp 目录下的所有文件
$dir = "C:/Users/Administrator/Workspace/learning_perl/";
my @files = glob( $dir."*" );
 
foreach (@files ){
   print $_ . "\n";
}

mkdir( $dir."good/" ) or warn "无法创建 $dir 目录, $!";
print "目录创建成功\n";
mkdir( $dir."bad/" ) or warn "无法创建 $dir 目录, $!";
print "目录创建成功\n";
rmdir( $dir."bad/" ) or warn "无法删除 $dir 目录, $!";
print "目录删除成功\n";


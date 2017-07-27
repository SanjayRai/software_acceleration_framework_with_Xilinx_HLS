#! /usr/bin/python

import binascii
import os
import sys
if (len(sys.argv)) != 4 :
    print "Wrong arguments\n\n\t ./rd_test.py 0xf7c00000 num_bytes srai_wr.bin"
else :
    byte_count = 0 
    filename = sys.argv[3]
    FP = open (filename, 'wb')
    try: 
	base_addr = int(sys.argv[1],16)
	while (byte_count < sys.argv[2]): 
	   cmd_strng = "iotools mmio_read8 %s" % (hex(base_addr))
	   os.system(cmd_strng)
	   base_addr = base_addr + 1
	   FP.write(1)
    finally:
        FP.close()

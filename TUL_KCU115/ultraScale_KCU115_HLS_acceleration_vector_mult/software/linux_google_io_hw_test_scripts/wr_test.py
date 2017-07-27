#! /usr/bin/python

import binascii
import os
import sys
if (len(sys.argv)) != 3 :
    print "Wrong arguments\n\n\t ./wr_test.py 0xf7c00000 srai.bin"
else :
    filename = sys.argv[2]
    FP = open (filename, 'rb')
    try:
        content = FP.read(1)
        base_addr = int(sys.argv[1],16)
        while content != "":
            hex_val = binascii.hexlify(content)
            data_val = hex_val 
            cmd_strng = "iotools mmio_write8 %s 0x%s" % (hex(base_addr), hex_val)
            os.system(cmd_strng)
            #print ("%s") % cmd_strng
            content = FP.read(1)
            base_addr = base_addr + 1
    finally:
        FP.close()

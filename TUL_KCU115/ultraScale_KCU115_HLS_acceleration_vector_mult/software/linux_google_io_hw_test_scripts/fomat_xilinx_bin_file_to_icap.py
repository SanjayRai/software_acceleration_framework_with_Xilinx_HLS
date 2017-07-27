#! /usr/bin/python
import binascii
import os
import sys
import subprocess

def rev_bits (x, n) :
    result = 0
    for i in xrange(n):
            if ( x >> i) & 1 : result |= 1 << (n - 1 -i)
    return result


if (len(sys.argv)) != 3 :
    print "Wrong arguments\n\n\t ./wr_test.py input.bin input_bit_reversed.bin"
else :
	filename_R = sys.argv[1]
	filename_W = sys.argv[2]
	FP_R = open (filename_R, 'rb')
	FP_W = open (filename_W, 'wb')
	try:
            content = FP_R.read(1)
            while content != "":
                t0 = binascii.hexlify(content)
                t1 = '{0:02x}'.format(rev_bits(int(t0,16),8))
                t2 = binascii.unhexlify(t1)
                FP_W.write(t2)
                content = FP_R.read(1)
	finally:
            FP_R.close()
            FP_W.close()

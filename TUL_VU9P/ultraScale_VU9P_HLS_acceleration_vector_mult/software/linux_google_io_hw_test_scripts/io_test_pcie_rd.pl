#! /usr/bin/perl
for ($i = 0; $i < $ARGV[1]; $i++) {
    $base_Addr[$i] = "0x".sprintf("%x", (hex($ARGV[0])+($i*4)));
    $returned_data = `iotools mmio_read32 $base_Addr[$i]`;
    print "$returned_data";
}

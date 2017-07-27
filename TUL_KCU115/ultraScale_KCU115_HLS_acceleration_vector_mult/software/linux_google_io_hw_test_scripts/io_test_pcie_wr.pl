#! /usr/bin/perl

$data_val[0] = "0xb1223344";
$data_val[1] = "0xb5667788";
$data_val[2] = "0xbabbccdd";
$data_val[3] = "0xb2345678";
$data_val[4] = "0xbbcdef01";
$data_val[5] = "0xbb667788";
$data_val[6] = "0xbb55aa11";
$data_val[7] = "0xbb123456";
$data_val[8] = "0xbbadfeed";

for ($i = 0; $i < $ARGV[1]; $i++) {
    if ($i > 8) {
    	$base_Addr[$i] = "0x".sprintf("%x", (hex($ARGV[0])+($i*4)));
	$data_val_temp = "0x".sprintf("%08x", (hex($data_val[0]) + $i));
        `iotools mmio_write32 $base_Addr[$i] $data_val_temp`;
    } else {
	$base_Addr[$i] = "0x".sprintf("%x", (hex($ARGV[0])+($i*4)));
	`iotools mmio_write32 $base_Addr[$i] $data_val[$i]`;
    }
}

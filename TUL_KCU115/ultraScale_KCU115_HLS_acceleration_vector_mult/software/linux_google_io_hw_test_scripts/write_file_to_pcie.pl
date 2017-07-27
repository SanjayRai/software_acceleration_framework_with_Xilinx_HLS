#! /usr/bin/perl

open(FP, "<$ARGV[1]");
binmode(FP);
$count=0;
#while (<FP>) {
while (read(FP, $buf, 2)) {
    printf "$count -> %x : ", hex($buf);
    $count++;
}

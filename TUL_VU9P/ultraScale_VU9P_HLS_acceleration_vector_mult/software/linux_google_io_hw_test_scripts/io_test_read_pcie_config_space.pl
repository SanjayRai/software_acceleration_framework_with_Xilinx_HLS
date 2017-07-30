#! /usr/bin/perl
for ($i = 0; $i < 1024; $i=$i+4) {
    $config_reg_address = sprintf("0x%x", $i);
    $pci_CFG = `iotools pci_read32 $ARGV[0] $ARGV[1] $ARGV[2] $config_reg_address`;
    @bigEnd_CFG = split //, $pci_CFG;
    $pci_CFG_reg =  $bigEnd_CFG[0].$bigEnd_CFG[1].$bigEnd_CFG[8].$bigEnd_CFG[9].$bigEnd_CFG[6].$bigEnd_CFG[7].$bigEnd_CFG[4].$bigEnd_CFG[5].$bigEnd_CFG[2].$bigEnd_CFG[3];
    print "PCIe Config register  $config_reg_address = $pci_CFG_reg\n";
}
# __SRAI $pci_BAR = `iotools pci_read32 $ARGV[0] $ARGV[1] $ARGV[2] 0x10`;
# __SRAI @bigEnd_BAR0 = split //, $pci_BAR;
# __SRAI $pci_BAR0_b =  $bigEnd_BAR0[0].$bigEnd_BAR0[1].$bigEnd_BAR0[8].$bigEnd_BAR0[9].$bigEnd_BAR0[6].$bigEnd_BAR0[7].$bigEnd_BAR0[4].$bigEnd_BAR0[5].$bigEnd_BAR0[2].$bigEnd_BAR0[3];
# __SRAI $pci_BAR = `iotools pci_read32 $ARGV[0] $ARGV[1] $ARGV[2] 0x14`;
# __SRAI @bigEnd_BAR1 = split //, $pci_BAR;
# __SRAI $pci_BAR1_b =  $bigEnd_BAR1[0].$bigEnd_BAR1[1].$bigEnd_BAR1[8].$bigEnd_BAR1[9].$bigEnd_BAR1[6].$bigEnd_BAR1[7].$bigEnd_BAR1[4].$bigEnd_BAR1[5].$bigEnd_BAR1[2].$bigEnd_BAR1[3];
# __SRAI $pci_BAR = `iotools pci_read32 $ARGV[0] $ARGV[1] $ARGV[2] 0x18`;
# __SRAI @bigEnd_BAR2 = split //, $pci_BAR;
# __SRAI $pci_BAR2_b =  $bigEnd_BAR2[0].$bigEnd_BAR2[1].$bigEnd_BAR2[8].$bigEnd_BAR2[9].$bigEnd_BAR2[6].$bigEnd_BAR2[7].$bigEnd_BAR2[4].$bigEnd_BAR2[5].$bigEnd_BAR2[2].$bigEnd_BAR2[3];
# __SRAI $pci_BAR = `iotools pci_read32 $ARGV[0] $ARGV[1] $ARGV[2] 0x1c`;
# __SRAI @bigEnd_BAR3 = split //, $pci_BAR;
# __SRAI $pci_BAR3_b =  $bigEnd_BAR3[0].$bigEnd_BAR3[1].$bigEnd_BAR3[8].$bigEnd_BAR3[9].$bigEnd_BAR3[6].$bigEnd_BAR3[7].$bigEnd_BAR3[4].$bigEnd_BAR3[5].$bigEnd_BAR3[2].$bigEnd_BAR3[3];
# __SRAI print "PCIe BAR0 = $pci_BAR0_b\n";
# __SRAI print "PCIe BAR1 = $pci_BAR1_b\n";
# __SRAI print "PCIe BAR2 = $pci_BAR2_b\n";
# __SRAI print "PCIe BAR3 = $pci_BAR3_b\n";

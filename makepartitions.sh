#/bin/bash

Run this if you need legacy (BIOS) booting:
# sgdisk -a1 -n2:34:2047  -t2:EF02 /dev/disk/by-id/scsi-SATA_disk1


Run these in all cases:
# sgdisk     -n9:-8M:0    -t9:BF07 /dev/disk/by-id/scsi-SATA_disk1
# sgdisk     -n1:0:0      -t1:BF01 /dev/disk/by-id/scsi-SATA_disk1


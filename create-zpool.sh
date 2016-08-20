#!/bin/bash

zpool create -o ashift=12 \
      -O atime=off -O canmount=off -O compression=lz4 -O normalization=formD \
      -O mountpoint=/ -R /mnt \
      -d -o feature@async_destroy=enabled \
         -o feature@empty_bpobj=enabled \
         -o feature@filesystem_limits=enabled \
         -o feature@lz4_compress=enabled \
         -o feature@spacemap_histogram=enabled \
         -o feature@extensible_dataset=enabled \
         -o feature@bookmarks=enabled \
         -o feature@enabled_txg=enabled \
         -o feature@embedded_data=enabled \
         -o feature@large_blocks=enabled \
      rpool mirror /dev/disk/by-id/scsi-SATA_disk1-part1

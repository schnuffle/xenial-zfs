#!/bin/bash

zpool create -f -o ashift=12 \
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
      rpool mirror /dev/disk/by-id/ata-WDC_WD20EFRX-68EUZN0_WD-WCC4M0CJD8TR-part1 /dev/disk/by-id/ata-WDC_WD20EFRX-68EUZN0_WD-WCC4M4YVT4VR-part1

#!/bin/bash

echo fileserver > /mnt/etc/hostname

echo "127.0.1.1    fileserver" >> /mnt/etc/hosts

cat <<EOF > /mnt/etc/network/interfaces.d/eth0
auto eth0
iface eth0 inet dhcp
EOF

mount --rbind /dev  /mnt/dev
mount --rbind /proc /mnt/proc
mount --rbind /sys  /mnt/sys
echo "Now # chroot /mnt /bin/bash --login"


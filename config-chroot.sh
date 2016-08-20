#!/bin/bash

# is executed inside chroot

locale-gen de_DE.UTF-8 en_US.UTF-8

echo 'LANG="en_US.UTF-8"' > /etc/default/locale

cat <<EOF > /etc/apt/sources.list
deb http://archive.ubuntu.com/ubuntu xenial main universe
deb-src http://archive.ubuntu.com/ubuntu xenial main universe

deb http://security.ubuntu.com/ubuntu xenial-security main universe
deb-src http://security.ubuntu.com/ubuntu xenial-security main universe

deb http://archive.ubuntu.com/ubuntu xenial-updates main universe
deb-src http://archive.ubuntu.com/ubuntu xenial-updates main universe
EOF

ln -s /proc/self/mounts /etc/mtab

apt update
apt install --yes ubuntu-minimal
apt install --yes --no-install-recommends linux-image-generic
apt install --yes zfs-initramfs


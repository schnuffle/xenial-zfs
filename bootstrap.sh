#!/bin/bash

chmod 1777 /mnt/var/tmp
debootstrap xenial /mnt
zfs set devices=off rpool


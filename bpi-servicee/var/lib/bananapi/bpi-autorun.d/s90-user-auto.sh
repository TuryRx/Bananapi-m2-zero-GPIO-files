#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

. /lib/lsb/init-functions


mount /dev/mmcblk0p1 /mnt
if [ -f /mnt/bananapi/autorun/bpi-autorun.sh ] ; then
        . /mnt/bananapi/autorun/bpi-autorun.sh
fi
umount /mnt

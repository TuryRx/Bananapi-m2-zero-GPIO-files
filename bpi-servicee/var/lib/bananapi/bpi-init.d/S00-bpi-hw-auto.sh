#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ ! -f /usr/bin/bpi-hw ] ; then
	echo "BPI: no bpi-hw !!"
	return
fi
echo "BPI: bpi-hw --auto"
bpi-hw --auto

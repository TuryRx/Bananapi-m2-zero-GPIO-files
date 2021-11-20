#!/bin/bash
#thanks for armbian's work
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -f /usr/local/bin/sun8i-corekeeper.sh ] ; then
	/usr/local/bin/sun8i-corekeeper.sh &
fi

#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -x /usr/local/bin/adbd.sh ] ; then
	/usr/local/bin/adbd.sh
fi


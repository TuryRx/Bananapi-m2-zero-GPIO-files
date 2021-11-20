#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -f /usr/bin/docker ] ; then
	sysctl -w kernel/keys/root_maxkeys=1000000
	echo sysctl -w kernel/keys/root_maxkeys=1000000
fi

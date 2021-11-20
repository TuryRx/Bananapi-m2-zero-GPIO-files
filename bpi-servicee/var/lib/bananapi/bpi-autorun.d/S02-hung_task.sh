#!/bin/bash
#thanks for loboris's work
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ -f /proc/sys/kernel/hung_task_timeout_secs ] ; then
	echo 0 > /proc/sys/kernel/hung_task_timeout_secs
fi

dmesg -n 1


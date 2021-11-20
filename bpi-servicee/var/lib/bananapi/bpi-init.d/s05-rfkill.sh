#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

if [ ! -f /usr/sbin/rfkill ] ; then
	echo "BPI: no /usr/sbin/rfkill !!"
	return
fi
echo "BPI: /usr/sbin/rfkill"
#rfkill unblock all
#rfkill unblock bluetooth

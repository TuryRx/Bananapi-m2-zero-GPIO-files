#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#set -x

BPIDIR="/var/lib/bananapi"
BPIINITDIR="$BPIDIR/bpi-init.d"
BPIINITFILE="$BPIINITDIR/bpi-init.sh"
BPIINITLOG="/var/log/bpi-init.log"

if [ ! -d $BPIINITDIR ] ; then
	exit 0
fi

date >> $BPIINITLOG

cd $BPIINITDIR
for IN in $(ls S[0-9]*.sh | sort)
do
	#echo $IN
	echo "BPI-INIT: ${IN}" >>  $BPIINITLOG
	. ${IN}
done

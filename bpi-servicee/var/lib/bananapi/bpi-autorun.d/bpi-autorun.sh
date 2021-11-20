#!/bin/bash
PATH=/sbin:/usr/sbin:/bin:/usr/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#set -x

BPIDIR="/var/lib/bananapi"
BPIAUTODIR="$BPIDIR/bpi-autorun.d"
BPIAUTOFILE="$BPIAUTODIR/bpi-autorun.sh"
BPIAUTOLOG="/var/log/bpi-autorun.log"


if [ ! -d $BPIAUTODIR ] ; then
	exit 0
fi

date >> $BPIAUTOLOG

cd $BPIAUTODIR
for IN in $(ls S[0-9]*.sh | sort)
do
	#echo $IN 
	echo "BPI-AUTORUN: ${IN}" >> $BPIAUTOLOG
	. ${BPIAUTODIR}/${IN}
done

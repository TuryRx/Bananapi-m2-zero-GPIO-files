#!/bin/bash
BOARD=$(bpi-hw)

LDPATH="/etc/ld.so.conf.d"
XSGXFILE="$LDPATH/00-pvr.conf"
XSGXBAK="$LDPATH/.00-pvr.conf"

setup_xsgx_ldpath()
{
  if [ ! -f "$XSGXFILE" ] ; then
    cp -a $XSGXBAK $XSGXFILE
  fi
}

setup_normal_ldpath()
{
  if [ -f "$XSGXFILE" ] ; then
    rm -f $XSGXFILE 
  fi
}

setup_board()
{
  case ${BOARD} in
  bpi-m3)
    setup_xsgx_ldpath
    ;;
  *)
    setup_normal_ldpath
    ;;
  esac
  ldconfig
}

#main
setup_board

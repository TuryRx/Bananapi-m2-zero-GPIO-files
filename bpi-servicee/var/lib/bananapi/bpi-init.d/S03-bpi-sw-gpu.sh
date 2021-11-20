#!/bin/bash
BOARD=$(bpi-hw)
GPU=yes

XSGXFILE="/usr/share/lightdm/lightdm.conf.d/55-xserver-command-pvr.conf"
XSGXBAK="/usr/share/lightdm/lightdm.conf.d/.55-xserver-command-pvr.conf"

check_cmdline()
{
  # parse command line arguments
  for arg in $(cat /proc/cmdline); do
    case $arg in
      gpu=*)
        GPU="${arg#*=}"
        return
        ;;
    esac
  done
}

setup_xsgx_xserver()
{
  if [ -f "/usr/local/XSGX/bin/X" ] ; then
    if [ ! -f "$XSGXFILE" ] ; then
      cp -a $XSGXBAK $XSGXFILE
    fi
  fi
}

setup_normal_xserver()
{
  if [ -f "$XSGXFILE" ] ; then
    rm -f $XSGXFILE 
  fi
}

setup_board()
{
  case ${BOARD} in
  bpi-m3)
    if [ "x$GPU" == "xyes" ] ; then
      setup_xsgx_xserver
    else
      setup_normal_xserver
    fi
    ;;
  *)
    setup_normal_xserver
    ;;
  esac
}

#main
check_cmdline
setup_board

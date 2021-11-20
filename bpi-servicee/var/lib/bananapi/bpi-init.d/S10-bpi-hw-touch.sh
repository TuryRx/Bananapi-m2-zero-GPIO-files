#!/bin/bash
BOARD=$(bpi-hw)

TOUCH="ft5x_ts"

check_cmdline()
{
  # parse command line arguments
  for arg in $(cat /proc/cmdline); do
    case $arg in
      touch=*)
        TOUCH="${arg#*=}"
        BOARD=bpi-user
        return
        ;;
    esac
  done
}

load_modules()
{
  case ${BOARD} in
  bpi-m3)
    modprobe ft5x_ts
    ;;
  bpi-m64)
    modprobe ft5x_ts
    ;;
  bpi-r18-avs)
    #modprobe ft5x_ts
    ;;
  bpi-m2m)
    modprobe gt9xxnew_ts
    ;;
  bpi-m2u)
    modprobe ft5x_ts
    ;;
  bpi-m2)
    modprobe ft5x_ts
    ;;
  bpi-m1p)
    modprobe ft5x_ts
    ;;
  bpi-m1)
    modprobe ft5x_ts
    ;;
  bpi-r1)
    modprobe ft5x_ts
    ;;
  bpi-user)
    modprobe ${TOUCH}
    ;;
  *)
    ;;
  esac
}

#main
check_cmdline
load_modules

#!/bin/bash
BOARD=$(bpi-hw)

load_modules()
{
  case ${BOARD} in
  bpi-m3)
    modprobe pvrsrvkm
    ;;
  bpi-m2)
    modprobe pvrsrvkm
    ;;
  bpi-rpi)
    ;;
  bpi-x86)
    ;;
  bpi-new)
    ;;
  *)
    modprobe ump
    modprobe mali
    modprobe mali_drm
    ;;
  esac
}

#main
load_modules

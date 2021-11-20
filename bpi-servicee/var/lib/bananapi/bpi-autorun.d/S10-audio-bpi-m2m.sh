#!/bin/bash
BOARD=$(bpi-hw)

ASOUNDFILE=/var/lib/alsa/asound.state.$BOARD

audio-bpi-m2m() {
  if [ "x$BOARD" != "xbpi-m2m" ] ; then
    return 0
  fi

  if [ ! -x "/usr/bin/amixer" ] ; then
    return 0
  fi

  # BPI-M2M do audio setup
  if [ -x "/usr/sbin/alsactl" ] ; then
    if [ -f $ASOUNDFILE ] ; then
      /usr/sbin/alsactl -f $ASOUNDFILE restore 2>&1 >/dev/null
    fi
  fi

  # amic mixer
  /usr/bin/amixer -c 0 cset numid=4 5 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=27 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=34 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=47 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=51 1 2>&1 >/dev/null
  # output mixer
  /usr/bin/amixer -c 0 cset numid=79 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=80 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=86 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=87 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=105 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=95 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=99 1 2>&1 >/dev/null
  #
  /usr/bin/amixer -c 0 cset numid=96 1 2>&1 >/dev/null
  /usr/bin/amixer -c 0 cset numid=100 1 2>&1 >/dev/null

  # display 
  #/usr/bin/amixer contents

  # test mic
  #arecord -fcd | aplay

  if [ -x "/usr/sbin/alsactl" ] ; then
    /usr/sbin/alsactl -f $ASOUNDFILE store 2>&1 >/dev/null
  fi
  #/usr/sbin/alsactl -f /var/lib/alsa/asound.state.bpi-m2m store
}

#main
audio-bpi-m2m

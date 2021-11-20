#!/bin/bash
BOARD=$(bpi-hw)

ASOUNDFILE=/var/lib/alsa/asound.state.$BOARD

audio-bpi-m64() {
  if [ "x$BOARD" != "xbpi-m64" ] ; then
    return 0
  fi

  if [ ! -x "/usr/bin/amixer" ] ; then
    return 0
  fi

  # BPI-M2U do audio setup
  if [ -x "/usr/sbin/alsactl" ] ; then
    if [ -f $ASOUNDFILE ] ; then
      /usr/sbin/alsactl -f $ASOUNDFILE restore 2>&1 >/dev/null
    fi
  fi

  # amic mixer
#  /usr/bin/amixer -c 0 cset numid=25,iface=MIXER,name='Right Input Mixer MIC1 Boost Switch' 1 2>&1 >/dev/null

  # display 
  #/usr/bin/amixer contents

  # test mic
  #arecord -fcd | aplay

  if [ -x "/usr/sbin/alsactl" ] ; then
    /usr/sbin/alsactl -f $ASOUNDFILE store 2>&1 >/dev/null
  fi
}

#main
audio-bpi-m64

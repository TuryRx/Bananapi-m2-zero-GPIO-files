#Created by Roxas
#https://github.com/TuryRx/Banana-pi-m2-zero-GPIO

#!/usr/bin/env python
import RPi.GPIO as GPIO
import time
from threading import Timer

PIN = 31
GPIO.setmode(GPIO.BOARD)
GPIO.setup(PIN,GPIO.IN,GPIO.PUD_UP)
print ("\n value_%d = %d\n" %(PIN,GPIO.input(PIN)))

GPIO.add_event_detect(PIN, GPIO.RISING,bouncetime=200)  # add rising ed>

switchcount = 0
while switchcount < 2:
        if GPIO.event_detected(PIN):
                switchcount += 1
                print ('Button pressed',switchcount)
                print ("\n value_%d = %d\n" %(PIN,GPIO.input(PIN>


GPIO.remove_event_detect(PIN)

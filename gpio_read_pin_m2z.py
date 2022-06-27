#Created by Roxas
#https://github.com/TuryRx/Banana-pi-m2-zero-GPIO

#!/usr/bin/env python
import RPi.GPIO as GPIO
import time

PIN_NUM = 31
GPIO.setmode(GPIO.BOARD)
GPIO.setup(PIN_NUM,GPIO.IN,GPIO.PUD_UP)

print ("The value of Pin %d is %d" %(PIN_NUM,GPIO.input(PIN_NUM)))


def my_callback(channel):
        print ("Callback trigger %d" %channel)
        print ("Now value of the Pin is %d" %(GPIO.input(PIN_NUM)))
        print ("Click Ctr + C to exit")

GPIO.add_event_detect(PIN_NUM,GPIO.RISING,callback = my_callback,bouncetime = >

try:
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    pass

GPIO.cleanup()

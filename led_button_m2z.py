#Created by Roxas
#https://github.com/TuryRx/Banana-pi-m2-zero-GPIO

#!/usr/bin/env python
import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(31, GPIO.IN, GPIO.PUD_UP)
GPIO.setup(29, GPIO.OUT)

while True:
  if GPIO.input(31):
    print ("Button state: LOW")
    GPIO.output(29, GPIO.LOW)
  else:
    print ("Button state: HIGH")
    GPIO.output(29, GPIO.HIGH)
  time.sleep(0.1)
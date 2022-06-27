#Created by Roxas
#https://github.com/TuryRx/Banana-pi-m2-zero-GPIO

#Nota: Activa la resistencia interna de los pines en modo pull up D

#!/usr/bin/env python
import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(31, GPIO.IN, GPIO.PUD_UP)
print ("\n value_7 = %d\n" %(GPIO.input(31)))

#GPIO.cleanup()

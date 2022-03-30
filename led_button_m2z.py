#Created by Roxas
#https://github.com/TuryRx/Banana-pi-m2-zero-GPIO

#Nota1: Para utilizar boton sin resistencia establecer pin 29 como pull-down
#Ejemplo: sudo gpio -1 mode 29 down
#Nota2: Para correrlo asi utilizar resistencia de 10K a GND

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(31, GPIO.IN)
GPIO.setup(29, GPIO.OUT)

while True:
  if GPIO.input(31):
    GPIO.output(29, True)
  else:
    GPIO.output(29, False)
  time.sleep(1)

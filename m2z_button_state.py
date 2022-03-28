import RPi.GPIO as GPIO
import time

##Para utilizar boton sin resistencia
#GPIO.setmode(GPIO.BOARD)
#GPIO.setup(31, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

##Boton con resistencia de 10K a GND
GPIO.setmode(GPIO.BOARD)
GPIO.setup(31, GPIO.IN)

while True:
  if GPIO.input(31):
    print ("Button state: LOW")
  else:
    print ("Button state: HIGH")
  time.sleep(1)

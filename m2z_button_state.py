import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)
GPIO.setup(31, GPIO.IN)

while True:
  if GPIO.input(31):
    print ("Button state: LOW")
  else:
    print ("Button state: HIGH")
  time.sleep(1)

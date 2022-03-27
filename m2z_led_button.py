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

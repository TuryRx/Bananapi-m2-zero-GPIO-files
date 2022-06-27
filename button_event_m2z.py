#Created by Roxas
#https://github.com/TuryRx/Banana-pi-m2-zero-GPIO

import time
import RPi.GPIO as GPIO

BUTTON_GPIO = 31
if __name__ == '__main__':
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(BUTTON_GPIO, GPIO.IN, GPIO.PUD_UP)
    pressed = False
    while True:
        if not GPIO.input(BUTTON_GPIO):
            if not pressed:
                print("Button pressed!")
                pressed = True
        else:
            #print("Button do not pressed!")
            pressed = False
        time.sleep(0.1)


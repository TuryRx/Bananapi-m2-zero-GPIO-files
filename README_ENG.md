# Banana-Pi-M2-Zero-GPIO-Files <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="25px" height="25px"> 

<img src="https://user-images.githubusercontent.com/62630527/160232659-95dd9d5a-aab8-4c9d-aada-07f9f4710b47.svg"> <img src="https://user-images.githubusercontent.com/62630527/160232639-911700a0-e6a5-451c-acd3-b546aaaee840.svg"> <img src="https://user-images.githubusercontent.com/62630527/160232603-39fd27c9-d257-471e-a773-0af8999e130a.svg">

## Files and examples for Banana Pi M2Z GPIO pinouts

To run the programs use (sudo python3 (program without parentheses)), to use the program from sys_stats.py run it like this (sudo python3 sys_stats.py –i2c-port 0).

| Description | Example | Pins |
| ------------- | ------------- | ------------- |
| **Turn on led for 3 seconds** | led_m2z.py | Led:29 |
| **Turn on led with button** | led_button_m2z.py | Led:29, Button:31 |
| **Check button status** | button_state_m2z.py | Button:31 |
| **See system metrics on oled screen** | sys_stats.py | SDA:3, SCL:5 |
| **Shows if a button is pressed** | button_event_m2z.py | Button:31 |
| **Configure button with internal pull up resistor** | button_pull_up_m2z.py | Button:31 |
| **Read button status with internal pull up resistor** | gpio_read_pin_m2z.py | Button:31 |
| **Configure button with internal pull up and rising resistance** | button_event_rising_m2z.py | Button:31 |
| **Shows current pin configuration** | gpio_function_m2z.py | ALL |
| **Shows the information of our plate** | info_board_m2z.py | NULL |
| **GPIO version sample** | info_gpio_m2z.py | NULL |
| **Uses a led to show a PWM** | pwm_m2z.py | Pin:7 |
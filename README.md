# Banana-Pi-M2-Zero-GPIO-Files <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="25px" height="25px"> 

<img src="https://user-images.githubusercontent.com/62630527/160232659-95dd9d5a-aab8-4c9d-aada-07f9f4710b47.svg"> <img src="https://user-images.githubusercontent.com/62630527/160232639-911700a0-e6a5-451c-acd3-b546aaaee840.svg"> <img src="https://user-images.githubusercontent.com/62630527/160232603-39fd27c9-d257-471e-a773-0af8999e130a.svg">

## Archivos y ejemplos para configuración de pines GPIO de Banana Pi M2Z

### Para ejecutar los programas utilizar el (sudo python3 (programa sin los paréntesis)), para utilizar el programa de sys_stats.py ejecutarlo de esta forma (sudo python3 sys_stats.py –i2c-port 0).

| Descripcion | Ejemplo | Pines |
| ------------- | ------------- | ------------- |
| **Encender led durante 3 segundos** | led_m2z.py | Led:29 |
| **Encender led con boton** | led_button_m2z.py | Led:29, Boton:31 |
| **Comprobar estado de boton** | button_state_m2z.py | Boton:31 |
| **Ver metricas de sistema en pantalla oled** | sys_stats.py | SDA:3, SCL:5 |
| **Muestra si un boton esta presionado** | button_event_m2z.py | Boton:31 |
| **Configurar botón con resistencia pull up interna** | button_pull_up_m2z.py | 31 |
| **Lee estado de botón con resistencia pull up interna** | gpio_read_pin_m2z.py | 31 |
| **Configurar botón con resistencia pull up interna y rising** | button_event_rising_m2z.py | 31 |
| **Muestra la configuracion actual de los pines** | gpio_funcion_m2z.py | ALL |
| **Muestra la informacion de nuestra placa** | info_board_m2z.py | NULL |
| **Muestra de vercion de GPIO** | info_gpio_m2z.py | NULL |
| **Utiliza un led para mostrar un PWM** | pwm_m2z.py | 7 |
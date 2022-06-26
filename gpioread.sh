#!/bin/bash
#gpio readall modifi by roxas

sudo gpio readall >> /var/lib/bananapi/gpio

sudo sed -i 's/+---Pi ?---+/+--Pi-M2Z--+/g' /var/lib/bananapi/gpio

sudo sed -i 's/|  12 |   8 |   SDA.1 |/|   2 |   8 |   SDA.1 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  11 |   9 |   SCL.1 |/|   3 |   9 |   SCL.1 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   6 |   7 | GPIO. 7 |/|   4 |   7 | GPIO. 7 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   1 |   0 | GPIO. 0 |/|  17 |   0 | GPIO. 0 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   0 |   2 | GPIO. 2 |/|  27 |   2 | GPIO. 2 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   3 |   3 | GPIO. 3 |/|  22 |   3 | GPIO. 3 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  64 |  12 |    MOSI |/|  10 |  12 |    MOSI |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  65 |  13 |    MISO |/|   9 |  13 |    MISO |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  66 |  14 |    SCLK |/|  11 |  14 |    SCLK |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  19 |  30 |   SDA.0 |/|   0 |  30 |   SDA.0 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   7 |  21 | GPIO.21 |/|   5 |  21 | GPIO.21 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   8 |  22 | GPIO.22 |/|   6 |  22 | GPIO.22 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|   9 |  23 | GPIO.23 |/|  13 |  23 | GPIO.23 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  10 |  24 | GPIO.24 |/|  19 |  24 | GPIO.24 |/g' /var/lib/bananapi/gpio
sudo sed -i 's/|  17 |  25 | GPIO.25 |/|  26 |  25 | GPIO.25 |/g' /var/lib/bananapi/gpio

sudo sed -i 's/| TxD     | 15  | 13  |/| TxD     | 15  | 14  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| RxD     | 16  | 14  |/| RxD     | 16  | 15  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO. 1 | 1   | 16  |/| GPIO. 1 | 1   | 18  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO. 4 | 4   | 15  |/| GPIO. 4 | 4   | 23  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO. 5 | 5   | 68  |/| GPIO. 5 | 5   | 24  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO. 6 | 6   | 2   |/| GPIO. 6 | 6   | 25  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| CE0     | 10  | 67  |/| CE0     | 10  | 8   |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| CE1     | 11  | 71  |/| CE1     | 11  | 7   |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| SCL.0   | 31  | 18  |/| SCL.0   | 31  | 1   |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO.26 | 26  | 354 |/| GPIO.26 | 26  | 12  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO.27 | 27  | 356 |/| GPIO.27 | 27  | 16  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO.28 | 28  | 21  |/| GPIO.28 | 28  | 20  |/g' /var/lib/bananapi/gpio
sudo sed -i 's/| GPIO.29 | 29  | 20  |/| GPIO.29 | 29  | 21  |/g' /var/lib/bananapi/gpio

sudo cat /var/lib/bananapi/gpio

sudo cat /dev/null > /var/lib/bananapi/gpio

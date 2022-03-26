#!/usr/bin/env python
#Created by roxas 
#create 06-agosto-2021

import os
import sys
import time
from pathlib import Path
from datetime import datetime

if os.name != 'posix':
    sys.exit('{} platform not supported'.format(os.name))

from demo_opts import get_device
from luma.core.render import canvas
from PIL import ImageFont

import subprocess

try:
    import psutil
except ImportError:
    print("The psutil library was not found. Run 'sudo -H pip install psutil' to install it.")
    sys.exit()


# TODO: custom font bitmaps for up/down arrows
# TODO: Load histogram


def bytes2human(n):
    """
    >>> bytes2human(10000)
    '9K'
    >>> bytes2human(100001221)
    '95M'
    """
    symbols = ('K', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y')
    prefix = {}
    for i, s in enumerate(symbols):
        prefix[s] = 1 << (i + 1) * 10
    for s in reversed(symbols):
        if n >= prefix[s]:
            value = int(float(n) / prefix[s])
            return '%s%s' % (value, s)
    return "%sB" % n


def cpu_usage():
    av1, av2, av3 = os.getloadavg()
    return "CPU Load: %.2f %.2f %.2f" \
        % (av1, av2, av3)

def cpu_up():
    uptime = datetime.now() - datetime.fromtimestamp(psutil.boot_time())
    return "TIME UP: %s" % \
        (str(uptime).split('.')[0])

def mem_usage():
    cmd = "free -m | awk 'NR==2{printf " \
          "\"RAM: %s/%sMB %.1f%%\", $3,$2,$3*100/$2 }'"
    return "%s" \
        % (subprocess.check_output(cmd, shell=True).decode("utf-8"))

def disk_usage():
    cmd = "df -h | awk '$NF==\"/\"{printf " \
          "\"HDD: %.1f/%.0fGB %s\", $3,$2,$5}'"
    return "%s" \
        % (subprocess.check_output(cmd, shell=True).decode("utf-8"))

def network_ip():
    cmd = "hostname -I | cut -d\' \' -f1 | tr -d \'\\n\'"
    return "IP: %s" \
    % (subprocess.check_output(cmd, shell=True).decode("utf-8"))

def network_send():
    stat = psutil.net_io_counters(pernic=True)['wlan0']
    return "%s R:%s T:%s" % \
           ('',bytes2human(stat.bytes_recv), bytes2human(stat.bytes_sent))


def stats(device):
    # use custom font
    font_path = str(Path(__file__).resolve().parent.joinpath('fonts', 'C&C Red Alert [INET].ttf'))
    font2 = ImageFont.truetype(font_path, 12)

    with canvas(device) as draw:
        draw.text((0, 0), cpu_usage(), font=font2, fill="white")
        
        draw.text((0, 12), cpu_up(), font=font2, fill="white")

        draw.text((0, 24), mem_usage(), font=font2, fill="white")

        draw.text((0, 36), disk_usage(), font=font2, fill="white")
        try:
            draw.text((0, 48), network_ip(), font=font2, fill="white")
            #draw.text((66, 48), network_send(), font=font2, fill="white")
        except KeyError:
            # no wifi enabled/available
            pass


def main():
    while True:
        stats(device)
        time.sleep(5)


if __name__ == "__main__":
    try:
        device = get_device()
        main()
    except KeyboardInterrupt:
        pass
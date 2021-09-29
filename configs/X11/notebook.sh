#!/bin/sh
xrandr --newmode "1500x1000_60.00"  124.25  1500 1600 1752 2000  1000 1003 1013 1038 -hsync +vsync
xrandr --addmode Virtual-1 1500x1000_60.00
xrandr --output Virtual-1 --primary --mode 1500x1000_60.00 --pos 0x0 --rotate normal --output Virtual-2 --off --output Virtual-3 --off --output Virtual-4 --off

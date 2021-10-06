#!/bin/sh
NOTEBOOK_SCREEN="eDP-1"
xrandr --newmode "1500x1000_60.00"  124.25  1500 1600 1752 2000  1000 1003 1013 1038 -hsync +vsync
xrandr --addmode "$NOTEBOOK_SCREEN" 1500x1000_60.00
xrandr --output "$NOTEBOOK_SCREEN" --primary --mode 1500x1000_60.00 --pos 0x0 --rotate normal

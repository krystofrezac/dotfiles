#!/bin/bash

img=/tmp/i3lock.png

rm $img

scrot $img
convert $img -scale 20% -scale 500% $img

i3lock -u -i $img

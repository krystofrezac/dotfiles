#!/bin/bash

pacman -S xorg alacritty i3-wm i3status arandr
cp ../configs/xorg-xinit/.xinitrc ~/.xinitrc

echo "Installation complete"

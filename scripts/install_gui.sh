#!/bin/bash

sudo pacman -S xorg alacritty i3-wm i3status dmenu i3lock imagemagick scrot arandr feh

ln -sf ~/dotfiles/configs/xorg-xinit/.xinitrc ~/.xinitrc

rm -rf ~/.config/alacritty
mkdir ~/.config/alacritty
ln -sf ~/dotfiles/configs/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

echo Installation complete

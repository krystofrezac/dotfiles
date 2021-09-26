#!/bin/bash

sudo pacman -S xorg alacritty i3-wm i3status dmenu i3lock imagemagick scrot arandr feh

ln -sf "$HOME/dotfiles/configs/xorg-xinit/.xinitrc" "$HOME/.xinitrc"

rm -rf "$HOME/.config/alacritty"
ln -s "$HOME/dotfiles/configs/alacritty" "$HOME/.config"

rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/configs/i3" "$HOME/.config"

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/configs/X11" "$HOME/.config"

echo Installation complete

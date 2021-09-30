#!/bin/bash

sudo pacman -S xorg kitty i3-wm i3status dmenu i3lock imagemagick scrot arandr feh ttf-fira-code

ln -sf "$DOTFILES/configs/xorg-xinit/.xinitrc" "$HOME/.xinitrc"

rm -rf "$HOME/.config/alacritty"
ln -s "$DOTFILES/configs/alacritty" "$HOME/.config"

rm -rf "$HOME/.config/i3"
ln -s "$DOTFILES/configs/i3" "$HOME/.config"

rm -rf "$HOME/.config/X11"
ln -s "$DOTFILES/configs/X11" "$HOME/.config"

echo Installation complete

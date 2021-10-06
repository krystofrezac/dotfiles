#!/bin/bash

sudo pacman -S git diff-so-fancy xclip htop tldr udiskie
sudo pacman -S --needed git base-devel yay
yay -S google-chrome asdf-vm
# asdf
cp -f /opt/asdf-vm ~/.asdf

# git
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

echo Installation complete

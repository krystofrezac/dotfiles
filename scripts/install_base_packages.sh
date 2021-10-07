#!/bin/bash

sudo pacman -S git diff-so-fancy xclip htop tldr udiskie
yay -S google-chrome asdf-vm
# asdf
cp -f /opt/asdf-vm ~/.asdf

# git
git config --global user.email "krystofrezac@gmail.com"
git config --global user.name "Kryštof Řezáč"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

echo Installation complete

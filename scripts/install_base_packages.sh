#!/bin/bash

sudo pacman -S git diff-so-fancy xclip htop tldr udiskie firefox brightnessctl playerctl libinput xf86-input-libinput xfce4-settings inotify-tools
yay -S google-chrome asdf-vm
# asdf
cp -f /opt/asdf-vm ~/.asdf

# git
git config --global user.email "krystofrezac@gmail.com"
git config --global user.name "Kryštof Řezáč"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"

git config --global alias.ll "log --graph --abbrev-commit --decorate --date=format:'%d.%m.%Y %H:%M' --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an - %ad%C(reset)%C(bold yellow)%d%C(reset)' --all"

echo Installation complete

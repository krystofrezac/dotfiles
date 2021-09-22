#!/bin/bash

sudo pacman -S git
yay -S google-chrome asdf-vm

cp -f /opt/asdf-vm "$HOME/.asdf"

# asdf
echo "Installation complete"

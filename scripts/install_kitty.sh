#!/bin/bash

sudo apt install kitty
rm -rf "$HOME/.config/kitty"
ln -sr "$DOTFILES/configs/kitty" "$HOME/.config"

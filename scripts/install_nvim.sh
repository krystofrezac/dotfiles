#!/bin/bash

rm -rf "$HOME/.config/nvim"
ln -s "$HOME/dotfiles/configs/nvim" "$HOME/.config/nvim"

echo Installation complete

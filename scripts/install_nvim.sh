#!/bin/bash

rm -rf "$HOME/.config/nvim"
ln -s "$DOTFILES/configs/nvim" "$HOME/.config/nvim"

echo Installation complete

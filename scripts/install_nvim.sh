#!/bin/bash

asdf plugin add neovim
asdf install neovim latest
asdf global neovim latest

rm -rf "$HOME/.config/nvim"
ln -s "$DOTFILES/configs/nvim" "$HOME/.config/nvim"

echo Installation complete

#!/bin/bash

asdf plugin add neovim
asdf install neovim latest
asdf global neovim latest

# LSP

sudo pacman -S ccls
rm -rf "$HOME/.config/nvim"
ln -s "$DOTFILES/configs/nvim" "$HOME/.config/nvim"

npm install -g diagnostic-languageserver yaml-language-server intelephense typescript-language-server

echo Installation complete

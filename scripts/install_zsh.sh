#!/bin/bash

sudo pacman -S zsh-completions zsh-syntax-highlighting starship
yay -S zsh-vi-mode
chsh -s $(which zsh)
rm -rf "$HOME/.config/zsh"
mkdir -p "$HOME/.config/zsh"

ln -sf "$DOTFILES/configs/zsh/.zshenv" "$HOME"
ln -s "$DOTFILES/configs/zsh/.zshrc" "$HOME/.config/zsh"
ln -s "$DOTFILES/configs/zsh/aliases" "$HOME/.config/zsh/"

ln -s "$DOTFILES/configs/zsh/external" "$HOME/.config/zsh"

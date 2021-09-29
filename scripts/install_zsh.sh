#!/bin/bash

sudo pacman -S zsh-completions zsh-syntax-highlighting starship
yay -S zsh-vi-mode
rm -rf "$HOME/.config/zsh"
mkdir -p "$HOME/.config/zsh"

ln -sf "$HOME/dotfiles/configs/zsh/.zshenv" "$HOME"
ln -s "$HOME/dotfiles/configs/zsh/.zshrc" "$HOME/.config/zsh"
ln -s "$HOME/dotfiles/configs/zsh/aliases" "$HOME/.config/zsh/"

ln -s "$HOME/dotfiles/configs/zsh/external" "$HOME/.config/zsh"

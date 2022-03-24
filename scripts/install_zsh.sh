#!/bin/bash

sudo apt install zsh #zsh-syntax-highlighting #starship #zsh-completions
#yay -S zsh-vi-mode
zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
curl -sS https://starship.rs/install.sh | sh
chsh -s $(which zsh)
rm -rf "$HOME/.config/zsh"
mkdir -p "$HOME/.config/zsh"

DOTFILES="$HOME/dotfiles"
ln -sf "$DOTFILES/configs/zsh/.zshenv" "$HOME"
ln -s "$DOTFILES/configs/zsh/.zshrc" "$HOME/.config/zsh"
ln -s "$DOTFILES/configs/zsh/aliases" "$HOME/.config/zsh/"

ln -s "$DOTFILES/configs/zsh/external" "$HOME/.config/zsh"

rm -rf "$HOME/.config/starship"
ln -s "$DOTFILES/configs/starship" "$HOME/.config/"

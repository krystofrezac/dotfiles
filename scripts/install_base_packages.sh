#!/bin/bash
sudo add-apt-repository ppa:aos1/diff-so-fancy
sudo apt update
sudo apt install git diff-so-fancy
# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0

# git
git config --global user.email "krystofrezac@gmail.com"
git config --global user.name "Kryštof Řezáč"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
git config --global init.defaultBranch main

git config --global alias.ll "log --graph --abbrev-commit --decorate --date=format:'%d.%m.%Y %H:%M' --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an - %ad%C(reset)%C(bold yellow)%d%C(reset)' --all"
git config --global alias.st "status"
git config --global alias.cm "commit"
git config --global alias.pu "push"

echo Installation complete

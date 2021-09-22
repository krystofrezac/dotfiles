#!/bin/bash

DIRECTORY=`pwd`

rm -rf ~/.config/nvim
mkdir ~/.config/nvim
ln -s $DIRECTORY/configs/nvim/* ~/.config/nvim

echo "Installation complete"

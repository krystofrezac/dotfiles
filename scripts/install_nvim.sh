#!/bin/bash

DIRECTORY=`pwd`

mkdir -p ~/.config/nvim
ln -sf $DIRECTORY/configs/nvim/* ~/.config/nvim

echo "Installation complete"

#!/bin/bash

git clone https://github.com/Prioe/dotfiles.git ~/dotfiles
cd ~/dotfiles
git submodule update --init --recursive
~/dotfiles/base/bin/restow

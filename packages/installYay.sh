#! /usr/bin/bash

rm -rf ~/.installCache/dotfiles/yay
mkdir ~/.installCache/dotfiles/yay
cd ~/.installCache/dotfiles/yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#rm -r ~/.installCache/dotfiles/yay

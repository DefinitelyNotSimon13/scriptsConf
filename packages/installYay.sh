#! /usr/bin/bash

mkdir ~/tmpInstall9999
cd ~/tmpInstall9999
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#rm -r ~/tmpInstall9999

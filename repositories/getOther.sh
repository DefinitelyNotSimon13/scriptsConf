#! /usr/bin/bash

rm -rf ~/tmpInstall7777
mkdir ~/tmpInstall7777
cd ~/tmpInstall7777

# Catpuccin qt5 theme -worked the first time at least
git clone "https://github.com/catppuccin/qt5ct.git"
mkdir ~/.config/qt5ct/colors
mv qt5ct/themes/Catppuccin-Mocha.conf ~/.config/qt5ct/colors/
read -p "Please set the theme in qt5ct - if it isnt there, thats an issue lol - Press enter to open qt5ct!"
read "The script will continue once you close qt5ct"
qt5ct
rm -rf qt5ct
 
# papirus icon theme
git clone "https://github.com/PapirusDevelopmentTeam/papirus-icon-theme"

# catpuccin cursor (mocha dark)

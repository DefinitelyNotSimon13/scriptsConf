#! /usr/bin/bash

echo "Starting \"installYayPackages.sh\" script"
echo "Due to the experimental state of all the scripts, I've opted to add an increaed amount of confirmations (\"Press enter to continue\"). This will be changed (an option added to remove) later."
  
read -p "Press enter to continue"

yay -S -Yg \
  hyprpicker \
  ddcci-driver-linx \
  catppuccin-gtk-theme-mocha 

echo "Finished \"installYayPackages.sh\" script"
read -p "Press enter to continue"

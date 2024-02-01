#! /usr/bin/bash

read -p "Are you sure? This script will remove all existing config files that clash with new configs! (nvim, hypr, waybar, etc...)" -n 1 -r
rm -rf ~/.installCache/dotfiles/main
mkdir ~/.installCache/dotfiles/main
cd ~/.installCache/dotfiles/main
git clone --recurse-submodules "https://github.com/DefinitelyNotSimon13/Catppuccin-Dotfiles.git"


#! TODO: Add line to make a backup into to tar file
# rm -r ~/.config/hypr
# rm -r ~/.config/waybar
# rm -r ~/.config/dunst
# rm -r ~/.config/alacritty
# rm -r ~/.config/kitty
# rm -r ~/.config/neofetch
# rm -r ~/.config/nvim
# rm -r ~/.config/rofi
# rm -r ~/.config/tmux
# rm -r ~/.zsh/
# rm ~/.zshrc
# rm .p10k.zsh

# rm -r ~/.installCache/dotfiles/main

#!/bin/bash

clear
echo "starting"
sudo pacman -Syuyu
sudo pacman -S kdeconnect steam autotiling sway wayland xorg-wayland wofi pipewire-alsa pipewire brightnessctl grim thunar feh slurp kitty firefox swaync pipewire-pulse zsh
echo "done"

sleep 2
clear

read -p "enter user: " user
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s "$(command -v zsh)" "$user"
echo "done, your deafult shell is zsh"

read -p "enter"
sleep 2
clear

sudo cp -r  ~/Downloads/swai-install-script-main/config/* ~/.config/
cp -r  ~/Downloads/swai-install-script-main/Pictures/* ~/Pictures/

echo "done"
read -p "press to end"
clear
sleep 2

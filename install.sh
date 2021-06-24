#!/bin/bash

sudo pacman -S xmonad xmonad-contrib qtile alacritty xterm nitrogen git base-devel pcmanfm firefox xmobar lxappearance vim xarchiver bspwm sxhkd pulseaudio pavucontrol

sudo chown +x dofiles/install.sh

# git clone https://aur.archlinux.org/yay
# cd yay
# makepkg -si

# git clone https://github.com/jonaburg/picom
# cd picom
# makepkg -sii
# picom --experimental-backend --config ~/.config/picom.conf

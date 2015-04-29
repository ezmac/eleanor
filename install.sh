#!/bin/bash
su -c "./packages.sh"

#Installing themes
tput setaf 4
echo "*Installing themes"
tput sgr0
git clone --recursive https://github.com/copycat-killer/awesome-copycats.git
mkdir -p ~/.config/awesome
cd awesome-copycats
cp -r * ~/.config/awesome
~/.config/awesome/switch-theme.sh 
tput setaf 4
echo "*Installation completed, please restart your computer and log in with awesome-wm"
tput sgr0

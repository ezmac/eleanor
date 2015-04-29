#!/bin/bash
tput setaf 3
echo "INSTALLING ELEANOR PROJECT"
echo "---------------------------"
tput sgr0

tput setaf 4
echo "*Downloading packages"
tput sgr0


sudo apt-get install --no-install-recommends lua5.1 xmlto luadoc libxcb-randr0-dev libxcb-xtest0-dev \
 libxcb-xinerama0-dev  libxcb-shape0-dev libxcb-keysyms1-dev libxcb-icccm4-dev libx11-xcb-dev lua-lgi-dev \
 libstartup-notification0-dev libxdg-basedir-dev libxcb-image0-dev libxcb-util0-dev libgdk-pixbuf2.0-dev build-essential cmake graphicsmagick-imagemagick-compat libxcb-cursor0 cairo-clock libxcb-xkb1 libcairo2-dev libxcb-cursor-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xkb-dev liblua5.1-0 liblua5.1-0-dbg lua5.1 liblua5.1-0-dev curl graphicsmagick cmake curl xorg slim libasound2 alsa-utils alsa-oss alsa-tools-gui curl thunar wicd-curse terminator firefox xfonts-terminus

#Awesome

tput setaf 4
echo "*Downloading awesome wm"
tput sgr0



MACHINE_TYPE=`uname -m`
if [${MACHINE_TYPE} == "x86_64"]
then
    curl -O http://lmde-mirror.gwendallebihan.net/latest/pool/main/a/awesome/awesome_3.5.1-1_amd64.deb
    tput setaf 4
    echo "*Installing awesome wm packages"
    tput sgr0
    sudo dpkg -i awesome_3.5.1-1_amd64.deb
    apt-get -f install
else
    curl -O http://lmde-mirror.gwendallebihan.net/latest/pool/main/a/awesome/awesome_3.5.1-1_i386.deb
    tput setaf 4
    echo "*Installing awesome wm packages"
    tput sgr0
    sudo dpkg -i awesome_3.5.1-1_i386.deb
    apt-get -f install
fi
curl -O http://www.deviantart.com/download/146727470/Minimal_Debian_SLiM_theme_by_Pasteurized.tar?token=34e2e30f4c7b7326d650a2a1ffc024a6a250a098&ts=1430326492

tar -xvf debian_slim.tar
mv minimal-debian/ /usr/share/slim/themes/
TARGET_KEY = "current_theme"
$REPLACEMENT_VALUE = "minimal-debian"
$CONFIG_FILE = "/etc/slim.conf"
sed -i "s/\($TARGET_KEY *= *\).*/\1$REPLACEMENT_VALUE/" $CONFIG_FILE

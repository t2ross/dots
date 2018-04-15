#!/bin/bash

# Lay-down base
sudo pacman -S - < pkglist.txt;
yaourt -S caffeine-ng zotero i3lock-fancy-git bumblebee-status ksuperkey;
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d;

# Install key-launchers
sudo cp rofi-apps rofi-gorice rofi-logout rofi-window /usr/bin;
cd /usr/bin;
sudo chmod +x rofi-apps rofi-gorice rofi-logout rofi-window;  

# Install i3-dots
rm -rf ~/.i3;
cp -r .i3 ~

# reboot system
reboot

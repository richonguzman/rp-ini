#!/bin/sh
# appsini.sh will install basic aplication and packages to start
# fresh Raspberry Pi Os installation for personal use

#Aplications
APLICACIONES="libreoffice firefox-esr gimp gparted mc matchbox-keyboard rpi-imager audacious gnome-screenshot exfat-fuse exfat-utils ntfs-3g"
sudo apt update && upgrade -y
sudo apt install $APLICACIONES -y
sudo apt-get install -y libimage-exiftool-perl

#Packages
PAQUETES="PyExifTool pysftp telepot"
sudo pip3 install $PAQUETES

#Netflix
curl -fsSL https://pi.vpetkov.net -o ventz-media-pi
sh ventz-media-pi

#Rclone
curl https://rclone.org/install.sh | sudo bash

#End
echo "Install complete, rebooting."
sudo reboot now

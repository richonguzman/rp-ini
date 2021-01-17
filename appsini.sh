#!/bin/sh
# RichonINI.sh will install basic aplication and packages to start
# fresh Raspberry Pi Os installation for personal use

#clear

#Aplications
APLICACIONES="libreoffice firefox-esr gimp gparted matchbox-keyboard rpi-imager exfat-fuse exfat-utils ntfs-3g"
sudo apt update && upgrade -y
sudo apt install $APLICACIONES -y
sudo apt-get install -y libimage-exiftool-perl

#Packages
PAQUETES="PyExifTool pysftp"
sudo pip3 install $PAQUETES

#Netflix
curl -fsSL https://pi.vpetkov.net -o ventz-media-pi
sh ventz-media-pi

#Aditional Apps
git clone https://github.com/Botspot/pi-apps
~/pi-apps/install

#Rclone
curl https://rclone.org/install.sh | sudo bash

#End
echo "Install complete, rebooting."
sudo reboot now

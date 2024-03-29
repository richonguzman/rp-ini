#!/bin/sh
# appsini.sh will install basic aplication and packages to start
# fresh Raspberry Pi Os installation for personal use

#Aplications
APLICACIONES="libreoffice firefox-esr gimp gparted matchbox-keyboard rpi-imager audacious realvnc-vnc-viewer nmap crunch zip unar mlocate gnome-screenshot libatlas3-base exfat-fuse exfat-utils ntfs-3g"
sudo apt update && upgrade -y
sudo apt install $APLICACIONES -y
sudo apt-get install -y libimage-exiftool-perl

#Packages
PAQUETES="PyExifTool pysftp telepot simplekml mysql-connector-python mariadb"
sudo pip3 install $PAQUETES

#Netflix
curl -fsSL https://pi.vpetkov.net -o ventz-media-pi
sh ventz-media-pi

#Rclone
curl https://rclone.org/install.sh | sudo bash

#End
echo "Install complete, rebooting."
sudo reboot now

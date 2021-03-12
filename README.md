# rp-ini
shell script to install apps and packages for personal use in new Raspberry pi OS installation: 

- sudo apt update and upgrade
- libreoffice (office)
- firefox-esr (browser)
- gimp (photoshop-esque)
- gparted (Drives managment)
- midnight commander (Total Commander gui from terminal)
- matchbox-keyboard (for touch-screen also)
- audacious (mp3 player - Winamp-ish)
- rpi-imager
- realvnc viewer
- nmap
- crunch
- gnome-screenshot (Desktop Screenshot saver)
- ex-fat fuse + ex-fat utils + ntfs-3g (for connecting Drives)

aditional packages for Python through "pip3":
- PyExifTool (Exif tool for RAW images)
- pysftp (python library for accesing through ssh)
- telepot (Telegram Bot library)

Also:
- Netflix: Chromium Media Edition
- Rclone


NOTE: will reboot as it finishes!


just run in terminal:

git clone https://github.com/richonguzman/rp-ini.git

bash ./rp-ini/appsini.sh

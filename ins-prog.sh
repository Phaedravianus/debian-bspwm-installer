#!/bin/bash

#Installing firefox
sudo apt install -y firefox-esr

#Installing etc.
sudo apt install -y ranger newsboat fzf neovim yt-dlp papirus-icon-theme ffmpeg aria2

#Installing Fonts
sudo apt install -y fonts-ubuntu fonts-firacode fonts-liberation2 ttf-mscorefonts-installer

#Installing Discord
apt install -y libatomic1 libc++1
aria2c https://discord.com/api/download?platform=linux&format=deb &&
sudo dpgk -i discord-0.0.28.deb

#İnstalling Office(Wps,Only)
aria2c https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11698/wps-office_11.1.0.11698.XA_amd64.deb &&
sudo dpgk -i wps-office_11.1.0.11698.XA_amd64.deb

#İnstalling Krita/Inkscape/Gimp
#sudo apt install -y krita
#sudo apt install -y inkscape
#sudo apt install -y gimp

#Installing Obs
#sudo apt install -y obs-studio

#Installing Steam
#sudo apt install -y steam

#Done
echo "Programs Installed now configuring"

sudo ~/debian-installers/ins-config.sh

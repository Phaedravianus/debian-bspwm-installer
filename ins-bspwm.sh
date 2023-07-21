#!/bin/bash
# Default packages are for the configuration and corresponding .config folders

# Installation packages after Base Debian with no GUİ
# Packages needed for bspwm installation
sudo apt install -y bspwm dmenu sxkhd picom numlocks rofi dunst libnotify-bin unzip geany lxappearance

# Network File Tools/System events
 sudo apt install -y dialog dosfstools avahi-daemon acpi acpid gvfs-backend xfce4-power-manager

 sudo systemctl enable avahi-daemon
 sudo systemctl enable acpid

# Media Manager
sudo apt install -y mpv

# File Manager 
sudo apt install -y thunar
sudo apt install -y gvfs-backends

# Terminal install 
sudo apt install -y kitty

# Sound packages 
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Network Manager
sudo apt install -y network-manager network-manager-gnome

# Neofetch/Htop/Vim/Git/Wget/Aria2
sudo apt install -y neofetch htop vim

# Desktop Background Handler
# sudo apt -y install nitrogen
sudo apt install -y feh

# Printing and Bluetooth
sudo apt install -y cups
sudo apt install -y bluez blueman simple-scan

sudo systemctl enable bluetooth

#Install Grub
sudo apt -y install grub

# Create folders in user directory
xdg-user-dirs-update

mkdir -p .config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bswpmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Install LightDM
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

############################################################################
# End of  Canscript For Default downloads
sudo apt autoremove


#echo "You Can Reboot now"
#####################################

echo "You Can Technically Reboot But Choose To İnstall Programs"
#Installing programs 
sudo ~/debian-installers/ins-prog.sh

#####################################
#Or You can choose to skip and just config

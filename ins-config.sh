#!/bin/bash

#sxhkdrc
sudo mv ~/.config/sxhkd/sxhkdrc ~/.config/sxhkd/sxkdrc.bak

sudo mv ~/debian-installer/config/sxhkdrc ~/.config/sxhkd/

#rofi
sudo mkdir ~/.config/rofi 
sudo mv ~/debian-installer/config/rofi/** ~/.config/rofi

#kitty
sudo mv ~/debian-installer/config/kitty/** ~./config/kitty

#dunst
sudo mkdir ~/.config/dunst
sudo mv ~/debian-installer/config/dunst/** ~/.config/dunst

#polybar
sudo mkdir ~/.config/polybar
sudo mv ~/debian-installer/config/polybar/** ~/.config/polybar

#background
sudo mkdir ~/.config/Backgrounds
sudo mv ~/debian-installer/config/Backgrounds/** ~/.config/Backgrounds 

#bdprochot
sudo mv ~/debian-installer/bdprochot.sh ~/

#Bashrc append PS1
sudo cp .bashrc .bashrc.bak
sudo echo 'alias apt='sudo apt'' >> .bashrc
sudo echo '#PS1 Customization' >> .bashrc
sudo echo 'PS1="[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[34m\]@\\[\e[31m\]\h\[\e[m\]] \W \$ "' >> .bashrc

#Themes
sudo apt -y install breeze gnome-themes-extra gnome-themes-extra-data

#Picom
sudo mkdir ~/.config/picom
sudo mv ~/debian-installer/config/picom/picom.conf ~/.config/picom/

#Bspwm 
sudo mv ~/.config/bspwm/bspwmrc ~./config/bspwm/bspwmrc.bak
sudo mv ~/debian-installer/config/bspwm/bspwmrc ~/.config/bspwm/

#LightDM
sudo mv /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
sudo mv ~/debian-installer/lightdm.conf /etc/lightdm/
sudo mv ~/debian-installer/slick-greeter.conf /etc/lightdm/

#Newsboat
sudo mkdir ~/.newsboat
sudo mv ~/debian-installer/.newsboat/config ~/.newsboat/
sudo mv ~/debian installer/.newsboat/url ~/.newsboat/

################################################################
echo "Configs are installed, You should Reboot Now!"
################################################################

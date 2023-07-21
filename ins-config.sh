#!/bin/bash

#sxhkdrc
sudo mv ~/.config/sxhkd/sxhkdrc ~/.config/sxhkd/sxkdrc.bak
sudo chmod +x sxhkdrc
sudo mv ~/debian-installers/config/sxhkdrc ~/.config/sxhkd

#rofi
sudo mv ~/debian-installers/config/rofi ~/.config/rofi

#kitty
sudo mkdir ~/.config/kitty
sudo mv ~/debian-installers/config/kitty/kitty.conf ~/.config/kitty

#dunst
sudo mkdir ~/.config/dunst
sudo mv ~/debian-installers/config/dunst/dunstrc ~/.config/dunst

#polybar
sudo mkdir ~/.config/polybar
sudo mv ~/debian-installers/config/polybar/config.ini ~/.config/polybar

#background
sudo mkdir ~/.config/Backgrounds
sudo mv ~/debian-installers/config/Backgrounds/Dunmer_Door.jpg ~/.config/Backgrounds 

#bdprochot
sudo mv ~/debian-installers/bdprochot.sh ~/

#Bashrc append PS1
sudo cp .bashrc .bashrc.bak
sudo echo 'alias apt="sudo apt"' >> .bashrc
sudo echo '#PS1 Customization' >> .bashrc
sudo echo 'PS1="[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[34m\]@\\[\e[31m\]\h\[\e[m\]] \W \$ "' >> .bashrc

#Themes
sudo apt -y install breeze gnome-themes-extra gnome-themes-extra-data

#Picom
sudo mkdir ~/.config/picom
sudo mv ~/debian-installers/config/picom/picom.conf ~/.config/picom/

#Bspwm 
sudo mv ~/.config/bspwm/bspwmrc ~./config/bspwm/bspwmrc.bak
sudo mv ~/debian-installers/config/bspwm/bspwmrc ~/.config/bspwm/

#LightDM
sudo mv /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
sudo mv ~/debian-installers/lightdm.conf /etc/lightdm/
sudo mv ~/debian-installers/slick-greeter.conf /etc/lightdm/

#Newsboat
#sudo mkdir ~/.newsboat
#sudo mv ~/debian-installers/.newsboat/config ~/.newsboat/
#sudo mv ~/debian installers/.newsboat/url ~/.newsboat/

################################################################
echo "Configs are installed, You should Reboot Now!"
################################################################

#!/bin/sh
echo Installing/Upgrading packages...
sudo apt update
sudo apt upgrade -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove
sudo apt autoclean
echo Installing important terminal libraries
sudo apt install ncdu
sudo apt install htop
sudo apt install tldr
sudo apt install autoclean
sudo apt install mlocate
sudo apt install gufw
sudo apt install tmux
sudo apt install imwheel
sudo apt install speedtest-cli
sudo apt install gedit
sudo apt install python3-pip
sudo apt install imagemagick
pip install pywal
echo Installing terminal hacking libraries
sudo apt install nmap
sudo apt install harvester
sudo apt install proxychains
echo Installing Terminal games
sudo apt install fortune
sudo apt install pi
sudo apt install rig
sudo apt install sl
echo Installing Desktop libraries
sudo apt install xfce4
sudo apt install streamlink
echo Installing Desktop Applications
sudo apt install plank
sudo apt install brave-browser
sudo apt install vlc
sudo apt install gimp
echo Cant install vscode and github desktop by Terminal alone.
echo Installing Terminal games
sudo apt install sl
sudo apt install pi
sudo apt install fortune
sudo apt install rig
sudo apt install aview
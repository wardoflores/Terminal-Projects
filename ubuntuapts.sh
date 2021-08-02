#!/bin/sh
echo Installing/Upgrading packages...
apt upgrade
echo Installing important terminal libraries
apt install ncdu
apt install tldr
apt install autoclean
apt install gufw
apt install mlocate
apt install speedtest-cli
apt install imwheel
apt install gedit
apt install python3-pip
apt install imagemagick
pip install pywal
echo Installing terminal hacking libraries
apt install nmap
apt install harvester
apt install proxychains
echo Installing Terminal games
apt install fortune
apt install pi
apt install rig
apt install sl
echo Installing Desktop Applications
apt install plank
apt install brave-browser
apt install vlc
apt install gimp
echo Cant install vscode and github desktop by Terminal alone.
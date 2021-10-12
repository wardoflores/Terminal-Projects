#!/bin/sh
echo Installing/Upgrading packages...
echo.
sudo pacman update
sudo pacman upgrade -y
sudo pacman-get update
sudo pacman-get upgrade -y
sudo pacman autoremove
sudo pacman autoclean
echo.
clear
echo Installing important terminal libraries
echo.
sudo pacman install ncdu
sudo pacman install htop
sudo pacman install neofetch
sudo pacman install tldr
sudo pacman install autoclean
sudo pacman install mlocate
sudo pacman install gufw
sudo pacman install tmux
sudo pacman install imwheel
sudo pacman install speedtest-cli
sudo pacman install gedit
sudo pacman install i3
sudo pacman install lutris
# sudo pacman install wine
# sudo pacman install playonlinux
sudo pacman install python3-pip
sudo pacman install imagemagick
pip install pywal
echo.
clear
echo Installing terminal hacking libraries
echo.
sudo pacman install nmap
sudo pacman install harvester
sudo pacman install proxychains
echo.
clear
echo Installing Terminal games
echo.
sudo pacman install fortune
sudo pacman install pi
sudo pacman install rig
sudo pacman install sl
echo.
clear
echo Installing Desktop libraries
echo.
sudo pacman install xfce4
sudo pacman install streamlink
echo.
clear
echo Installing Desktop Applications
echo.
sudo pacman install plank
sudo pacman install brave-browser
sudo pacman install vlc
sudo pacman install gimp
echo.
clear
echo Cant install vscode and github desktop by Terminal alone.
echo.
clear
echo Installing Terminal games
echo.
sudo pacman install sl
sudo pacman install pi
sudo pacman install fortune
sudo pacman install rig
sudo pacman install aview
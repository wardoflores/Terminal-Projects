#!/bin/zsh
su
echo Installing/Upgrading packages...
echo.
pacman -Syu
echo.
clear
echo Installing important terminal libraries
echo.
pacman -S ncdu
pacman -S btop
pacman -S neofetch
pacman -S tldr
pacman -S alacritty
echo Install zsh, the fonts, and the themes manually.
pacman -S git
pacman -S yay
pacman -S flatpak
pacman -S python-pip
pacman -S tk
pacman -S pavucontrol
pacman -S alsa-utils
pacman -S alsa-firmware
pacman -S alsa-lib
pacman -S pulseaudio
pacman -S pamixer
pacman -S pulseaudio-alsa
pacman -S ncurses
pacman -S iniparser
pacman -S fftw
pacman -S libx11
pacman -S sdl2
pacman -S portaudio
pacman -S wayland-protocols
echo.
clear
echo Installing terminal hacking libraries
echo.
pacman -S nmap
pacman -S proxychains
yay -S sherlock
echo.
clear
echo Installing Terminal games
echo.
pacman -S fortune
pacman -S pi
pacman -S rig
pacman -S sl
echo.
clear
echo Installing Desktop libraries
echo.
pacman -S sway
pacman -S swayimg
pacman -S thunar
pacman -S sway
pacman -S mako
pacman -S brightnessctl
pacman -S wl-gammactl
pacman -S grim
pacman -S slurp
pacman -S wl-clipboard
pacman -S projectm-pulseaudio
echo.
clear
echo Installing Desktop Applications
echo.
pacman -S spotify
pacman -S mpv
pacman -S libreoffice
yay -S scrcpy
yay -S tenacity-git
yay -S librecad
yay -S syncthing
yay -S droidcam
yay -S nextshot
yay -S brave-bin
yay -S code-insiders
yay -S obsidian
yay -S waydroid
yay -S obs-studio
yay -S gpick
echo.
clear
echo Installing Terminal games
echo.
pacman -S cmatrix
pacman -S sl
yay -S rig
yay -S aview
echo.
clear
echo Installing Wayland screenshare libraries
echo.
pacman -S xdg-desktop-portal-wlr
pacman -S libpipewire02
echo.
clear
echo Installing Xwayland libraries
echo.
pacman -S xorg-xwayland
pacman -S xorg-xlsclients
pacman -S qt5-wayland
pacman -S glfw-wayland
echo.
clear
echo Installing Xwayland Applications
echo.
pacman -S github-desktop
pacman -S discord
pacman -S drawio-desktop-bin
pacman -S wine
pacman -S proton
pacman -S steam
pacman -S lutris
pacman -S playonlinux
echo.
clear
echo Installing/Upgrading packages...
echo.
pacman -Syu
echo.
clear
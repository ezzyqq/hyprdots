#!/bin/bash

set -e

read -rp "This script will rewrite your .bashrc and some other configs, do you really want to continue? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Cancelled"
  exit 1
fi

if [ "$EUID" -eq 0 ]; then
  echo "Don't execute this script as root!"
  exit 1
fi


## DOTS
TARGET="$HOME"
echo "Installing dotfiles..."
cp -f ./dots/* $TARGET


## PACKAGES INSTALLATION
sudo pacman -S --noconfirm opendoas

# doas
if [ ! -f /etc/doas.conf ]; then
  sudo touch /etc/doas.conf
  sudo echo "permit :wheel" > /etc/doas.conf
fi

read -rp "Do you want to delete base-devel and sudo? (DON'T DO THIS IF YOU USE AUR) (y/N): " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
  doas pacman -Rns base-devel
  doas pacman -S fakeroot gcc make
fi

# basic
echo "Installing basic packages..."
doas pacman -S --noconfirm vim alacritty waybar wofi hyprland xdg-desktop-portal-hyprland xdg-user-dirs power-profiles-daemon cliphist mako libnotify swaybg network-manager-applet playerctl && xdg-user-dirs-update

# bluetooth
echo "Installing bluetooth tools..."
doas pacman -S --noconfirm bluez bluez-utils blueman
doas  systemctl enable bluetooth

# brightness
doas pacman -S --noconfirm brightnessctl

# sound
echo "Installing pipewire..."
doas pacman -S --noconfirm pulsemixer pipewire pipewire-jack pipewire-pulse

# fonts
echo "Installing fonts..."
doas pacman -S --noconfirm noto-fonts noto-fonts-emoji otf-font-awesome



## FINISH
echo "Installed successfully!"

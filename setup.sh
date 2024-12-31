#!/bin/bash

# TODO: check ID_LIKE in /etc/os-release to execute either "apt install" or "pacman -S".
sudo apt install build-essential openssh-server alacritty fish neofetch eza bat
# starship prompt
curl -sS https://starship.rs/install.sh | sh
# custom terminal font
mkdir -p ~/.fonts
cp -n ./FantasqueSansMono-Normal/OTF/* ~/.fonts
fc-cache -f -v

# copy config files
mkdir -p ~/.config
cp -R ./alacritty ~/.config
cp -R ./fish ~/.config
cp starship.toml ~/.config
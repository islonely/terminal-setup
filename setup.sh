#!/bin/bash

# TODO: check ID_LIKE in /etc/os-release to execute either "apt install" or "pacman -S".
# install essential packages for myself
sudo apt install build-essential openssh-server alacritty fish neofetch eza bat libxi-dev libxcursor-dev libgl-dev libasound2-dev

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

# change default shell
sudo usermod --shell $(which fish) $USER

# install V
cd ~
git clone https://github.com/vlang/v
cd v
make
sudo ./v symlink

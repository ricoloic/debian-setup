#!/bin/bash

sudo apt update
sudo apt upgrade -y

# creating directories
mkdir ~/personal
mkdir ~/programs

# installing small nice to have package
sudo apt install -y curl neofetch htop git make cmake build-essential python3 tmux btop tree docker ffmpeg nfs-common

# clonning and installing Kickstart.nvim
sudo chmod +x ./nvim_setup.sh
sudo ./nvim_setup.sh

# installing the staticserve command
chmod +x ./staticserve
sudo cp ./staticserve /usr/local/bin/

# installing and setupping zsh
sudo apt install -y zsh
which zsh | sudo chsh -s
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


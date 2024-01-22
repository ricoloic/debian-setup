#!/bin/bash

sudo apt update
sudo apt upgrade -y

# creating directories
mkdir ~/personal
mkdir ~/programs

# installing small nice to have package
sudo apt install curl -y
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install git -y
sudo apt install make cmake build-essential -y
sudo apt install python3 -y

# clonning and installing Kickstart.nvim
sudo chmod +x ./nvim_setup.sh
sudo ./nvim_setup.sh

# install node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile

# installing and setupping zsh
sudo chmod +x ./zsh_setup.sh
sudo ./zsh_setup.sh


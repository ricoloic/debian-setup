#!/bin/bash

sudo apt update
sudo apt upgrade

# creating directories
mkdir ~/personal
mkdir ~/programs

# installing small nice to have package
sudo apt install curl -y
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install git -y
sudo apt install make cmake build-essential -y
sudo apt install python3

# clonning and installing Kickstart.nvim
sudo chmod +x ./nvim_setup.sh
sudo ./nvim_setup.sh

# installing and setupping zsh
sudo chmod +x ./zsh_setup.sh
sudo ./zsh_setup.sh

# install node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
echo "export NVM_DIR=\"\$HOME/.nvm\"
  [ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"
  [ -s \"\$NVM_DIR/bash_completion\" ] && \\. \"\$NVM_DIR/bash_completion\"" >> ~/.zshrc
nvm install stable

so


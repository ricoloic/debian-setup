#!/bin/bash

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
sudo apt install neovim
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
nvim --headless "+Lazy! sync" +qa

# installing and setupping zsh
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


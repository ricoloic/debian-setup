#!/bin/bash

sudo apt install ninja-build gettext unzip
cd
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
nvim --headless "+Lazy! sync" +qa
echo "
vim.opt.guicursor = \"\"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv(\"HOME\") .. \"/.vim/undodir\"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = \"yes\"
vim.opt.isfname:append(\"@-@\")

vim.opt.updatetime = 50

vim.opt.colorcolumn = \"80\"

vim.g.mapleader = \" \"
vim.keymap.set(\"n\", \"<leader>pv\", vim.cmd.Ex)" >> ~/.config/nvim/init.lua


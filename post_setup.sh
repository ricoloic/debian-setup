cat ./.zshrc >> ~/.zshrc
echo "zsh" >> ~/.bashrc

echo "export NVM_DIR=\"\$HOME/.nvm\"
  [ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"
  [ -s \"\$NVM_DIR/bash_completion\" ] && \\. \"\$NVM_DIR/bash_completion\"" >> ~/.zshrc
nvm install stable


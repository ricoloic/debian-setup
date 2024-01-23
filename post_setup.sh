cat ~/debian-setup/.zshrc >> ~/.zshrc
echo "zsh" >> ~/.bashrc

sed -i.bak 's/ZSH_THEME="robbyrussell"/ZSH_THEME="half-life"/' ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sed -i 's/plugins=(git)/plugins=(git autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

sed -i 's/PROMPT="${purple}%n%{$reset_color%} in ${limegreen}%~%{$reset_color%}\\$(virtualenv_prompt_info)\\$(ruby_prompt_info)\\$vcs_info_msg_0_${orange} λ%{$reset_color%} "/PROMPT="${purple}%n%{$reset_color%} in ${limegreen}%~%{$reset_color%}\\$(virtualenv_prompt_info)\\$(ruby_prompt_info)\\$vcs_info_msg_0_${orange} λ%{$reset_color%} \n${limegreen}→%{$reset_color%} "/' ~/.oh-my-zsh/themes/half-life.zsh-theme


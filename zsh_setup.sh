#!/bin/bash

sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "alias so=\"source ~/.zshrc\"" >> ~/.zshrc

echo "PROMPT=\"%(?:%{\$fg_bold[green]%}%1{➜%} :%{\$fg_bold[red]%}%1{➜%} ) %{\$fg_bold[magenta]%}%n%{\$reset_color%}@%{\$fg_bold[magenta]%}%m%{\$reset_color%} at %{\$fg[cyan]%}%c%{\$reset_color%}\"
PROMPT+=' \$(git_prompt_info)
'

ZSH_THEME_GIT_PROMPT_PREFIX=\"%{\$fg_bold[blue]%}git:(%{\$fg[red]%}\"
ZSH_THEME_GIT_PROMPT_SUFFIX=\"%{\$reset_color%} \"
ZSH_THEME_GIT_PROMPT_DIRTY=\"%{\$fg[blue]%}) %{\$fg[yellow]%}%1{✗%}\"
ZSH_THEME_GIT_PROMPT_CLEAN=\"%{\$fg[blue]%})\"" > ~/.oh-my-zsh/themes/personal-theme.zsh-theme
echo "ZSH_THEME=\"personal-theme\"" >> ~/.zshrc

echo "clear" >> ~/.zshrc
echo "neofetch" >> ~/.zshrc

#!/usr/bin/env bash

cd ~
mkdir -p ~/.config
mkdir -p ~/.z

sudo apt update

sudo apt install bash-completion
sudo apt install zsh

sudo apt install htop
sudo apt install tree

####################
# zshell
####################
ZSH_PATH=/usr/bin/zsh
if ! grep -qF $ZSH_PATH /etc/shells; then
  # Add '/usr/bin/zsh' to /etc/shells
  sudo bash -c "echo /usr/bin/zsh >> /etc/shells"
fi
chsh -s $ZSH_PATH

curl -L git.io/antigen > ~/.config/antigen.zsh
curl -L https://raw.githubusercontent.com/rupa/z/master/z.sh > ~/.config/z.sh


####################
# npm and vtop, jsonlint
####################
mkdir -p ~/.npm-global
sudo apt install nodejs
sudo apt install npm
npm install -g jsonlint
npm install -g vtop
npm install -g npm-check-updates


####################
# editors
####################
sudo snap install --classic sublime-text
sudo snap install --classic intellij-idea-ultimate

#! /usr/bin/env bash

# Install zsh
sudo apt-get update
sudo apt-get install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's~plugins=(~plugins=(zsh-autosuggestions ~1' ~/.zshrc

# Set agnoster theme
sudo apt-get install fonts-powerline 
sed -i 's~ZSH_THEME="robbyrussell"~ZSH_THEME="agnoster"~1' ~/.zshrc


#!/usr/bin/env bash

set -e

cd ~/

echo "Updating system..."
sudo apt update

echo "Installing dependencies..."
sudo apt install curl git zsh tmux exa  -y

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Copying zshrc files..."
cp dotfiles/.zshrc ~/.zshrc

echo "Installing zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing zsh-syntax-highlighting plugin..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Copying tmux config files..."
cp dotfiles/.tmux.conf ~/.tmux.conf

echo "Installing additional dependencies..."
sudo apt install language-pack-ru -y

echo "Dotfiles installation completed!"

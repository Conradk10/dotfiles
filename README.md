# dotfiles

**Warning: Don't blindly use my settings unless you know what that entails. Use at your own risk!**

## Install

To install, you have two options:

### Option 1: Using the install.sh script

1. Clone the dotfiles repository:

```shell
cd ~/
git clone https://github.com/eugconrad/dotfiles
```

2. Run the install.sh script:

```shell
cd dotfiles/
chmod +x install.sh
./install.sh
```

### Option 2: Manual installation

1. Clone the dotfiles repository:

```shell
cd ~/
git clone https://github.com/eugconrad/dotfiles
```

2. Execute each command step by step:

```shell
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

```

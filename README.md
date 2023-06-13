# dotfiles

**Warning: Don't blindly use my settings unless you know what that entails. Use at your own risk!**

## Install

To install, you have two options:

### Option 1: Using the install.sh script

1. Clone the dotfiles repository:

```shell
cd ~/
git clone https://github.com/Conradk10/dotfiles
```

2. Run the install.sh script:

```shell
cd dotfiles/
./install.sh
```

### Option 2: Manual installation

1. Clone the dotfiles repository:

```shell
cd ~/
git clone https://github.com/Conradk10/dotfiles
```

2. Execute each command step by step:

```shell
cd ~/
git clone https://github.com/Conradk10/dotfiles
sudo apt update
sudo apt install curl git neofetch exa tmux zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.p10k.zsh ~/.p10k.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp dotfiles/.tmux.conf ~/.tmux.conf
sudo apt install language-pack-ru -y
```

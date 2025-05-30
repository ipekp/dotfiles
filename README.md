
# Installation Guide

## Requirements

Before you begin, ensure your system is up to date and install the necessary packages:

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install cmake git kitty curl tmux build-essential python3 python3-venv python3-pip xsel npm unzip
```

## Install Neovim

To install Neovim, follow these steps:

```bash
cd /tmp
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
```

## Set Up Dotfiles

To set up your dotfiles, execute the following commands:

```bash
cd ~
git clone https://github.com/ipekp/dotfiles.git
rm -f .tmux.conf .bashrc
ln -s ~/dotfiles/.tmux.conf .tmux.conf
ln -s ~/dotfiles/.bashrc .bashrc
mkdir -p ~/.config
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/kitty ~/.config/kitty
```

## Run Font Installation Scripts

Finally, run the following scripts to complete the font installation:

```bash
bash scripts/install_fonts.sh
bash scripts/test-fonts.sh
```

Make sure to follow each step carefully to ensure a successful installation.
```

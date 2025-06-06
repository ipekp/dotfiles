#!/usr/bin/env bash

work_dir=$(pwd)
# updating
echo "[STEP 1] installing pkgs"
echo "Working dir is ${work_dir}"

cd $HOME
sudo apt update && sudo apt upgrade -y
sudo apt install -y cmake git kitty curl tmux build-essential python3 python3-venv python3-pip xsel unzip fontconfig ripgrep
clear

# install neovim
echo "[STEP 2] install neovim"

cd /tmp
git clone https://github.com/neovim/neovim
cd /tmp/neovim
git checkout stable 
make CMAKE_BUILD_TYPE=Release
sudo make install
clear

# setup dotfile links
echo "[STEP 3] dotfile links"
cd $HOME
git clone https://github.com/ipekp/dotfiles.git
rm -f .tmux.conf .bashrc ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/.tmux.conf .tmux.conf
ln -s ~/dotfiles/.bashrc .bashrc
mkdir -p ~/.config/kitty/
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
clear

# install fonts
echo "[STEP 4] install fonts"
cd $work_dir/scripts
./install_fonts.sh

# verify fonts
echo "[STEP 5] verify fonts"
./test-fonts.sh

echo "[STEP 6] use Mason to install isort, black and stylua"

#!/bin/sh

# uninstall default vim
sudo apt -y remove vim

# add vim repository
sudo apt install software-properties-common
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update

# install latest vim
sudo apt install vim

# install Vundle
cd ~

mkdir -p .vim/bundle

cd ~/.vim/bundle 

git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim

cd ~

vim +BundleInstall +qa

cd $0

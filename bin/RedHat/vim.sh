#!/bin/bash

# install latest vim
cd ~
git clone https://github.com/vim/vim.git

cd vim

./configure --prefix=/usr/local --with-features=huge --enable-multibyte --enable-rubyinterp --enable-luainterp --enable-cscope --enable-fail-if-missing --with-ruby-command=/usr/bin/ruby

sudo make && sudo make install

# install Vundle
cd ~

mkdir -p .vim/bundle

cd $_

git clone https://github.com/VundleVim/Vundle.vim.git Vundle.vim

cd ~

vim +BundleInstall +qa

cd $0

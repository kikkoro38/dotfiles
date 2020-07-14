#!/bin/bash
# install ruby

# install package for ruby install
sudo yum install -y openssl-devel readline-devel zlib-devel

# install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# temporaly setting path to rbenv for follow command in this shell
echo `export PATH="$HOME/.rbenv/bin:$PATH"` >> ~/.bash_profile

# init rbenv
~/.rbenv/bin/rbenv init

# install rbenv plugin
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo ~/.rbenv/plugins/ruby-build/install.sh

# install ruby latest version
latest_ver=$(rbenv install -l | grep -v - | tail -1)

rbenv install $latest_ver 

rbenv global $latest_ver

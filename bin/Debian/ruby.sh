#!/bin/sh
# install ruby

# install package for ruby install
#sudo apt install -y bison build-essential libyaml-dev libreadline6-dev libffi-dev libncurses5-dev libgdbm6 libgdbm-dev

# install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# temporaly setting path to rbenv for follow command in this shell
echo `export PATH="$HOME/.rbenv/bin:$PATH"` >> ~/.bash_profile
. ~/.bash_profile

# init rbenv
~/.rbenv/bin/rbenv init

# install rbenv plugin
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo ~/.rbenv/plugins/ruby-build/install.sh

# install ruby latest version
latest_ver=$(~/.rbenv/bin/rbenv install -l | grep -v - | grep 2. | tail -1)

~/.rbenv/bin/rbenv install $latest_ver 

~/.rbenv/bin/rbenv global $latest_ver

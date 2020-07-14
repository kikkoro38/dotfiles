#!/bin/bash
# install ruby

sudo yum install -y openssl-devel readline-devel zlib-devel

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

~/.rbenv/bin/rbenv init

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo ~/.rbenv/plugins/ruby-build.install.sh

latest_ver=$(rbenv install -l | grep -v - | tail -1)

rbenv install $latest_ver 

rbenv global $latest_ver

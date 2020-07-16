#!/bin/bash

cd ~

curl -kLO https://github.com/tmux/tmux/releases/download/2.9/tmux-2.9.tar.gz

tar -zxcf tmux-2.9.tar.gz

cd tmux-2.9

./configure

make

sudo make install

cd $0

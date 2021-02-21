#!/bin/sh

# install ja lang
sudo apt install -y language-pack-ja-base language-pack-ja ibus-mozc 

# set timezone
sudo timedatectl set-timezone Asia/Tokyo

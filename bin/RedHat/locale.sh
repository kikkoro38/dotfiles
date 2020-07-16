#!/bin/bash

# install ja lang
sudo yum install -y ibus-kkc vlgothic-*

sudo localectl set-locale LANG=ja_JP.UTF-8

sudo source /etc/locale.conf

# set timezone

sudo timedatectl set-timezone Asia/Tokyo

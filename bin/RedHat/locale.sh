#!/bin/bash

# install ja lang
sudo yum install -y ibus-kkc vlgothic-* 

sudo yum reinstall -y glibc-common

sudo localectl set-locale LANG=ja_JP.UTF-8
sudo localectl set-keymap jp106
sudo localectl set-keymap jp-OADG109A

sudo . /etc/locale.conf

# set timezone

sudo timedatectl set-timezone Asia/Tokyo

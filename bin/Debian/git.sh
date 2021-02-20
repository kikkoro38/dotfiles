#!/bin/sh

# update git version

# remove git if old version exists
sudo apt list installed git

if [[ "$?" == 0 ]] ; then
  sudo apt remove -y git
fi

# install packages 
sudo apt install -y libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev autoconf

# download git package
wget https://github.com/git/git/archive/v2.30.0.tar.gz

tar -zxf v2.30.0.tar.gz
cd git-2.30.0

make configure
./configure --prefix=/usr

make all doc info

sudo make install install-doc install-html install-info

# install git-completion
#cd /usr/local

#sudo git clone https://github.com/git/git.git


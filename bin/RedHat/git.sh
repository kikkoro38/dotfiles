#!/bin/bash

# update git version

# remove git if old version exists
sudo yum list installed git

if [[ "$?" == 0 ]] ; then
  sudo yum remove -y git
fi

# install ius repository for install git224
sudo yum install -y \
https://repo.ius.io/ius-release-el7.rpm \
https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

sudo yum-config-manager --enable ius

sudo yum install -y git224

yum-config-manager --disable ius

# install git-completion
cd /usr/local

sudo git clone https://github.com/git/git.git


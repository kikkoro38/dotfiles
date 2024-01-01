#!/bin/sh

# install packages for docker
#sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent

# install GPG public key of docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add repository
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y

# install docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io


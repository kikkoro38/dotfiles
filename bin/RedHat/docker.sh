#!/bin/bash

# install docker
sudo yum install -y device-mapper-persitent-data lvm2

# add docker repository
yum-config-manager --add-repo https://download.docker.com/linux/centos/docer-ce.repo

sudo yum install -y docer-ce docker-ce-cli containerd.io


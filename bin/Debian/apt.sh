#!/bin/sh

 sudo apt update -y

# install utils
sudo apt-get install -y \
  libcurl4-gnutls-dev \
  libexpat1-dev \
  gettext \
  libz-dev \
  libssl-dev \
  autoconf \
  asciidoc \
  docbook2x \
  bison \
  build-essential \
  libyaml-dev \
  libreadline6-dev \
  libffi-dev \
  libncurses5-dev \
  libgdbm6 \
  libgdbm-dev \
  software-properties-common \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent

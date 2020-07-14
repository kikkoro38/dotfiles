#!/bin/bash

get_os_distoribution() {

  if [ "$(uname)" == 'Darwin' ]; then
    os_name='mac'
  elif [ -e /etc/debian_version ] || [ -e /etc/debian_release ]; then
    os_name= 'Debian'
  elif [ -e /etc/redhat-release ]; then
    os_name='RedHat'
  fi

  echo $os_name
}

get_os_distoribution
eval `./bin/$os_name/install.sh`


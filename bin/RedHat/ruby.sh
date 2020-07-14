#!/bin/bash
# install ruby

sudo yum install ruby-devel

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

~/.rbenv/bin/rbenv init

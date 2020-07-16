#!/bin/bash

RELOAD_FILES=(".bash_profile" ".bashrc")

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue

  if [ -e ~/"$f" ]; then
    rm ~/"$f"
  fi

  ln -s "$HOME/dotfiles/$f" ~/"$f"

  if ! `echo ${RELOAD_FILES[@]} | grep -q "$f"`; then
    continue
  else
    . ~/"$f"
  fi

done

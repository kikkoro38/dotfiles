#!/bin/bash

RELOAD_FILES=(".bash_profile" ".bashrc")

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue

  rm ~/"$f"

  ln -s "$HOME/dotfiles/$f" ~/"$f"

  if !`echo ${RELOAD_FILES[@]} | grep "$f"`; then
    . ~/"$f"
  fi

done

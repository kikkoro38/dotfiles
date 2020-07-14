#!/bin/bash

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue

  rm ~/"$f"

  ln -s "$HOME/dotfiles/$f" ~/"$f"

  [[ "$f" == ".vimrc" ]] && continue
  . ~/"$f"

done

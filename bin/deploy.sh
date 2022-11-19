#!/bin/bash
export LC_ALL=C
RELOAD_FILES=(".bash_profile" ".bashrc" ".zshenv" ".zshrc")

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

vim +BundleInstall +qa

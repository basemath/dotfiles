#!/bin/bash

read -p "This will overwrite files in ~. Continue? [y/n]: " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  a=(.gitconfig .vimrc .zshrc)
  b=("${a[@]}")

  for filename in "${b[@]}" ; do
    echo writing ~/$filename
    cp ./$filename ~/$filename
  done
fi

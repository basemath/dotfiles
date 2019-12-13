#!/bin/bash

a=(.gitconfig .vimrc .zshrc)
b=("${a[@]}")

for filename in "${b[@]}" ; do
cp ~/$filename ./$filename
done

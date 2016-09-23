#!/bin/sh

MA=~/.ma

git clone --depth=1 https://github.com/ctgnauh/minimum-awesome.git $MA

for name in $(cd $MA && ls -d vim*)
do
  ln -s $MA/$name ~/.$name
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

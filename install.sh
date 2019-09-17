#!/bin/sh
VIMHOME=~/.vim

cp .vim ~/.vim
cp .vimrc ~/.vimrc

cd "$VIMHOME"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#!/bin/sh
VIMHOME=~/.vim

cp .vim ~/
cp .vimrc ~/

cd "$VIMHOME"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

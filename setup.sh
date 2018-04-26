#!/bin/bash
rc=$(pwd)/vimrc.vim 
dir=$(pwd)
cd ~
if [ -f .vimrc ] ; then
	rm .vimrc
fi
ln -s $rc ~/.vimrc

if [ -f .vim ] ; then
	rm .vim
fi
ln -s $dir ~/.vim
cd $dir

git clone https://github.com/VundleVim/Vundle.vim.git $dir/bundle/Vundle.vim

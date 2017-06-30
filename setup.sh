#!/bin/bash
rc=$(pwd)/vimrc.vim 
dir=$(pwd)
cd ~
ln -s $rc ~/.vimrc
ln -s $dir ~/.vim
cd $dir

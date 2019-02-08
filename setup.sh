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
virtualenv env2
python3 -m venv env3

source env2/bin/activate
pip install --upgrade pip
pip install --upgrade pynvim
deactivate

source env3/bin/activate
pip install --upgrade pip
pip install --upgrade pynvim

cd ./bundle/Vundle.vim
python3 install.py --clang-completer
deactivate

#!/bin/bash
mkdir -p ~/.vim/colors 
mkdir -p ~/.vim/autoload/airline/themes
mv ~/.vimrc ~/.vimrc.$(date +%y%m%d%H%M%S)
ln -fs $(pwd)/.vimrc ~/.vimrc
ln -fs $(pwd)/.tern-config ~/.tern-config
ln -fs $(pwd)/autoload/airline/themes/onedark.vim ~/.vim/autoload/airline/themes/onedark.vim
ln -fs $(pwd)/colors/onedark.vim ~/.vim/colors/onedark.vim


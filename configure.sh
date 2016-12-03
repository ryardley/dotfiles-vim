#!/bin/bash
mv ~/.vimrc ~/.vimrc.$(date +%y%m%d%H%M%S)
ln -fs $(pwd)/.vimrc ~/.vimrc
ln -fs $(pwd)/.tern-config ~/.tern-config

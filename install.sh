WD=$(pwd)

# install ycm
cd ~/.vim/bundle/YouCompleteMe
./install.sh --tern-completer
cd $WD

if [ "$(uname)" == "Darwin" ]; then 
  if [ -z "$(which brew)" ]; then
    brew install ag
  fi
else
  echo "Please install ag"
fi

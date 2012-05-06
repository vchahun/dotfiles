#!/bin/bash

SOURCE=`dirname $0`
SOURCE=`cd $SOURCE && pwd`
TARGET=$HOME
DOTFILES=".profile .vimrc .tmux.conf .gitignore"

echo "Installing from $SOURCE into $TARGET"

cd $TARGET

### Generic dotfiles ###
for f in $DOTFILES
do
    ln -s $SOURCE/$f $TARGET/$f
done

### Vim ###
mkdir -p $TARGET/.vim
# Vim templates
ln -s $SOURCE/templates $TARGET/.vim/templates

mkdir -p $TARGET/.vim/bundle
# Vim vundle
[ -f $TARGET/.vim/bundle/vundle ] || git clone git://github.com/gmarik/vundle.git $TARGET/.vim/bundle/vundle

### Matplotlib ###
mkdir -p $TARGET/.matplotlib
ln -s $SOURCE/matplotlibrc $TARGET/.matplotlib/matplotlibrc

echo "Successful install"

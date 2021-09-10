#!/bin/bash
# .make.sh 
# This script creates symlinks from ~/ to dotfiles dir
# Before running this file, don't forget to run
# cmod +x .make.sh

dir=~/dotfiles
olddir=~/dotfiles_old
files=".alacritty.yml .vimrc .zshrc .gitconfig .tmux.conf"
local_files=".zshrc.local .gitconfig.local"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...complete."

echo "Changing to the $dir directory"
cd $dir
echo "...complete."

for file in $files; do
  echo "Moving existing dotfiles from ~ to $olddir"
  mv ~/$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done

echo "Create local config files"
for file in $local_files; do
  touch $file
done


echo "Creating symlink to coc-settings.json in ~/.config/nvim/coc-settings.json"
ln -s $dir/coc-settings.json ~/.config/nvim/coc-settings.json

# Sourcing vim config to neovim directory
# (https://github.com/neovim/neovim/issues/3530)
echo "Creaging symlink from .vimrc to ~/.config/nvim/init.vim"
ln -s ~/.vimrc ~/.config/nvim/init.vim


#!/bin/bash
# .make.sh 
# This script creates symlinks from ~/ to dotfiles dir
# Before running this file, don't forget to run
# cmod +x .make.sh

dir=~/dotfiles
olddir=~/dotfiles_old
files=".alacritty.toml .vimrc .zshrc .gitconfig"
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
  touch ~/$file
done

echo "Setup SO Alacritty config file"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     ln -s $dir/.alacritty-linux.toml ~/.alacritty.so.toml;;
    Darwin*)    ln -s $dir/.alacritty-macos.toml ~/.alacritty.so.toml;;
    *)          echo "Unsupported OS: $unameOut";;
esac


echo "Creating symlink to coc-settings.json in ~/.config/nvim/coc-settings.json"
mkdir -p ~/.config/nvim
ln -s $dir/coc-settings.json ~/.config/nvim/coc-settings.json

# Sourcing vim config to neovim directory
# (https://github.com/neovim/neovim/issues/3530)
echo "Creaging symlink from .vimrc to ~/.config/nvim/init.vim"
ln -s ~/.vimrc ~/.config/nvim/init.vim


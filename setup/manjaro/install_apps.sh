#!/usr/bin/env bash

# Packages from https://aur.archlinux.org/
pamac_apps=(
  'alacritty'
  'android-studio'
  'discord'
  'neovim'
  'tmux'
  'unityhub'
  'visual-studio-code-bin'
  'zsh'
)
sudo pamac install --no-confirm ${pamac_apps[*]}

# Snap
snap_apps=(
  '1password'
  'spotify'
)
snap install ${snap_apps[*]}

# TODO spotify 1password 

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Google cloud SDK
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-364.0.0-linux-arm.tar.gz
tar -xf google-cloud-sdk-364.0.0-linux-arm.tar.gz
mv google-cloud-sdk ~/google-cloud-sdk
~/google-cloud-sdk/install.sh
rm -rf google-cloud-sdk-364.0.0-linux-arm.tar.gz


# Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
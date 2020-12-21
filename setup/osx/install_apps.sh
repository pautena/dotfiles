#!/usr/bin/env bash

###############################################################################
# Install brew and brew cask apps                                             #
###############################################################################

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Add older versions cask repository because of 1Password subscription based business model change from v6 to v7

brew tap homebrew/cask-versions homebrew/cask-fonts

declare -a brew_cask_apps=(
  'alacritty'
  'alfred'
  'android-file-transfer'
  'android-studio'
  'brave-browser'
  'docker'
  'java'
  'keybase'
  'postman'
  'slack'
  'spotify'
  'visual-studio-code'
)

for app in "${brew_cask_apps[@]}"; do
  brew install --cask "$app"
done

declare -a brew_cli_tools=(
  'cmake'
  'coreutils'
  'ffmpeg'
  'git'
  'htop'
  'mas'
  'neovim'
  'node'
  'nvm'
  'tig'
  'tmux'
  'watchman'
  'yarn'
  'zsh'
)

for tool in "${brew_cli_tools[@]}"; do
  brew install "$tool"
done

###############################################################################
# Other brew dependencies                                                 #
###############################################################################
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

###############################################################################
# Install Mac App Store apps                                                  #
###############################################################################

declare -a mas_apps=(
  '497799835' # Xcode
)

for app in "${mas_apps[@]}"; do
  mas install "$app"
done

###############################################################################
# Install fonts                                                  #
###############################################################################

declare -a fonts=(
  'homebrew/cask-fonts/font-source-code-pro'
)

for font in "${fonts[@]}"; do
  brew install --cask "$font"
done

###############################################################################
# Configure installed apps                                                    #
###############################################################################

# Set ZSH as the default shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

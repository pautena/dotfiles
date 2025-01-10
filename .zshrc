export ZSH=~/.oh-my-zsh
export LC_ALL="en_GB.UTF-8"
export LANG="en_GB.UTF-8"
export ZSH_DISABLE_COMPFIX=true



# Starthip
eval "$(starship init zsh)"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh


# Aliases
alias n="nvim"
export PATH=$PATH:$HOME/bin
export EDITOR='nvim'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/opt/homebrew/bin"

export TERM="xterm-256color"

# Tmux

# if [ "$TMUX" = "" ]; then tmux; fi

# Setup Python Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Loads Android tools
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# Setup Go
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN:/opt/nvim/"

source ~/.zshrc.local

[[ -s "/Users/pau.tena/.gvm/scripts/gvm" ]] && source "/Users/pau.tena/.gvm/scripts/gvm"

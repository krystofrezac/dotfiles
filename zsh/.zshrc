export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git git-prompt kubectl docker)

source $ZSH/oh-my-zsh.sh

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# yarn global packages
export PATH="$(yarn global bin):$PATH"

# Go global packages
export PATH="$(go env GOPATH)/bin:$PATH"

# aliases
alias ll="ls -lah --color"
alias ls="ls --color"

alias file-names="ggrep -Po '^[^(\s:]*\.[^(\s:]+'"

# React native
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export LANG=en_US.UTF-8
export NODE_BINARY=/Users/krystofrezac/.asdf/shims/node

## Ruby
export GEM_HOME=$HOME/.gem/ruby/3.3.0
export PATH=$GEM_HOME/bin:$PATH


# Node
export NODE_OPTIONS=--max_old_space_size=8000

# Python
export PATH=$PATH:~/.local/bin/

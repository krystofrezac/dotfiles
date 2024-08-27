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

# Node
export NODE_OPTIONS=--max_old_space_size=8000

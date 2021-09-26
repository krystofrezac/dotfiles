fpath=($ZDOTDIR/external $fpath)
fpath+=$ZDOTDIR/external/pure

source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -Uz compinit; compinit

# Autocompletion for hidden files
_comp_options+=(globdots)
source "$ZDOTDIR/external/completion.zsh"

# asdf
. /opt/asdf-vm/asdf.sh

# Pure setup
autoload -U promptinit; promptinit
prompt pure

# Push the current directory visited on to the stack
setopt AUTO_PUSHD

# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

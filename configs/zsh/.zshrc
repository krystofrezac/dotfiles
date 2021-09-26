fpath=($ZDOTDIR/external $fpath)
fpath+=$ZDOTDIR/external/pure

source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -Uz compinit; compinit

# Autocompletion for hidden files
_comp_options+=(globdots)
source "$ZDOTDIR/external/completion.zsh"

# Pure setup
autoload -U promptinit; promptinit
prompt pure

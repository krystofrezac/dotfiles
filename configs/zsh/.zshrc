fpath=($ZDOTDIR/external $fpath)
fpath+=$ZDOTDIR/external/pure

source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -Uz compinit; compinit

# Autocompletion for hidden files
_comp_options+=(globdots)
source "$ZDOTDIR/external/completion.zsh"

# Map delete
bindkey  "^[[3~"  delete-char

# vi-mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=kj
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# asdf
. /opt/asdf-vm/asdf.sh

# prompt 
eval "$(starship init zsh)"
export LC_CTYPE=en_US.UTF-8
# Push the current directory visited on to the stack
setopt AUTO_PUSHD

# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS

# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# use vim keys fore selecting
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# use 'e' in normal mode to edit command in editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd e edit-command-line

# highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# run i3 on startup
if [ "$(tty)" = "/dev/tty1" ];
then
  pgrep i3 || exec startx 
fi

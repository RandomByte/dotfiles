export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/repositories/pure $fpath)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

if [[ `uname` == "Linux" ]]; then
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6c6c6c"
fi

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt INTERACTIVE_COMMENTS

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY  # adds history incrementally
unsetopt SHARE_HISTORY # don't share history across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE # ignore commands starting with a space

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

# Required additional bindings on Ubuntu
bindkey '\e[1;5C' forward-word        # ctrl right
bindkey '\e[1;5D' backward-word       # ctrl left

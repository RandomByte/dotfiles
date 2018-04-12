# initialize autocomplete here, otherwise functions won't be loaded
#autoload -U compinit
#compinit

### Some say that the below is a faster version of the above. I was not able to observe any difference
autoload -Uz compinit

for dump in $HOME/.zcompdump(N.mh+24); do
  compinit
done

compinit -C
#################

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

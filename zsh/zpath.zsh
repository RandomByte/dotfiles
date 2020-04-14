source $ZSH/zsh/_settings.zsh

# see http://zsh.sourceforge.net/Guide/zshguide02.html#l24
typeset -U PATH path

# Add system paths
source $ZSH/system/env.zsh

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Homebrew
    source $ZSH/homebrew/env.zsh

    # Ruby
    source $ZSH/ruby/env.zsh
fi

# Add n to $PATH
path=($N_PREFIX/bin $path)
export PATH

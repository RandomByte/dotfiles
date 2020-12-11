source $ZSH/zsh/_settings.sh

# see http://zsh.sourceforge.net/Guide/zshguide02.html#l24

if [ -n "$ZSH_VERSION" ]; then
	# Only execute in zsh
	# Note that this script might be sourced from a bash via ~/.profile
	typeset -U PATH path
fi

# Add system paths
source $ZSH/system/env.zsh

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Homebrew
    source $ZSH/homebrew/env.zsh

    # Ruby
    source $ZSH/ruby/env.zsh

    # Yarn path
    PATH="$ZSH/bin/yarn/bin:$PATH"
else
	test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	# or just add /home/linuxbrew/.linuxbrew/bin to $PATH?
fi

# Add n to $PATH
PATH="$N_PREFIX/bin:$PATH"

# Add pyton/pip binaries to $PATH
PATH="$HOME/.local/bin:$PATH"

export PATH

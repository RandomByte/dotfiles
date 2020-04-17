# Enhance bash shell with non-interactive zsh login shell environment variables:
# if running bash (not zsh), source zsh env and profile to get expected environment
# variables in apps launched from .desktop files
if [ -n "$BASH_VERSION" ]; then
    # source .zshenv (for $ZSH) and .zprofile (for $PATH) if they exist
    if [ -f "$HOME/.zshenv" ] && [ -f "$HOME/.zprofile" ]; then
        . "$HOME/.zshenv"
        . "$HOME/.zprofile"
    else
        echo "Failed to find ~/.zshenv or ~/.zprofile"
    fi
fi

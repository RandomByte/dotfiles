alias reload!='. ~/.zshrc'

alias such='git'
alias very='git'
alias wow='git status -sb'
alias got='git'

alias k='kubectl'
alias bwd='pwd | sed -e "s:/:🥖:g"'
alias lg="lazygit"

alias copy="pbcopy"

# From https://github.com/sapegin/dotfiles/blob/master/zsh/aliases.zsh
# Download file and save it with filename of remote file
alias get="curl -O -L"

if [[ `uname` == "Linux" ]]; then
	alias open="xdg-open"
fi

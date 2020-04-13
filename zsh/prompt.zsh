# load pure prompt
autoload -U promptinit && promptinit
prompt pure

if [[ `uname` == "Linux" ]]; then
	PURE_PROMPT_SYMBOL="￥"
fi

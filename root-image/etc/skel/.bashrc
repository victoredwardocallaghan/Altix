alias ls='ls --color=auto'
alias vi='vim'

# set PATH so it includes user's private bin if it exists
if [ -d ~/.cabal/bin ] ; then
	PATH=~/.cabal/bin:"${PATH}"
fi
export PATH


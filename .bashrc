shopt -s cdspell
shopt -s histappend

PS1='\[\e[1;32m\][`date +'%H:%M'`]\[\e[1;34m\]\w \$\[\e[0m\] '
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth

complete -C "$HOME/.scripts/rake-complete.rb" -o default rake

source ~/.profile

function mem {
	ps x -o rss | grep -v RSS | suma -
}

function grh {
	grep "$*" ~/.bash_history
}

function svn {
	if test "x$1" = "xdiff"; then
		env svn $* | colordiff | less
	else
		env svn $*
	fi
}

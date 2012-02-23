shopt -s cdspell
shopt -s histappend

PS1='\[\e[1;32m\][`date +'%H:%M'`]\[\e[1;34m\]\w \$\[\e[0m\] '
export HISTFILESIZE=1000000
export HISTCONTROL=ignoreboth

complete -C "$HOME/.scripts/rake-complete.rb" -o default rake

source ~/.profile

function grh {
	grep "$*" ~/.bash_history
}

function svn {
	if test "x$1" = "xdiff"; then
		env svn $* | colordiff | less -R
	else
		env svn $*
	fi
}

# Because `alias -='cd -' doesn't work.
-() {
  cd -
}

test -f /etc/bash_completion && source /etc/bash_completion

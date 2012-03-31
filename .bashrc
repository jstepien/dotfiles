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

# Append the history to ~/.bash_history after each command. Brian Carper
# recommends using `history -n` as well to read the history file too but it
# seems to be too time consuming with big history files.
# Cf. http://briancarper.net/blog/248/
export PROMPT_COMMAND="history -a"

function svn {
	if test "x$1" = "xdiff"; then
		env svn $* | colordiff | less -R
	else
		env svn $*
	fi
}

test -f /etc/bash_completion && source /etc/bash_completion

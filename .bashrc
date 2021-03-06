shopt -s cdspell
shopt -s histappend

PS1='\[\e[1;$(test $? -eq 0 && echo 32 || echo 31)m\][$(date +'%H:%M')]\[\e[1;34m\]\w \$\[\e[0m\] '
export HISTFILESIZE=1000000
export HISTSIZE=$HISTFILESIZE
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

function httpd {
  ifconfig | grep -B1 inet | sed 's/^\([a-z0-9]\+:\).*/\1/'
  if python -V 2>&1|grep -q ^Python.2; then
    python -m SimpleHTTPServer
  else
    python -m http.server
  fi
}

function randomize {
  perl -ne 'print rand() . " " . $_ ' \
    | sort -g --parallel=2 \
    | sed 's,^[^ ]* ,,';
}

test -f /etc/bash_completion && source /etc/bash_completion

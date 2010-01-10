PS1='\[\e[1;32m\][`date +'%H:%M'`]\[\e[1;34m\]\w \$\[\e[0m\] '
export HISTFILESIZE=10000
export HISTCONTROL=ignorespace

complete -C "$HOME/.scripts/rake-complete.rb" -o default rake

source ~/.profile

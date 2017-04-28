export LANG='pl_PL.UTF-8'
export LC_ALL='pl_PL.UTF-8'
export ECHANGELOG_USER='Jan Stępień (jano) <jstepien@users.sourceforge.net>'
export PACKAGER='Jan Stępień <jstepien@users.sourceforge.net>'
export EDITOR='nvim'
export TSOCKS_CONF_FILE="$HOME/.tsocks.conf"
# http://awesome.naquadah.org/wiki/Problems_with_Java
export _JAVA_AWT_WM_NONREPARENTING=1

export PATH="$PATH:$HOME/bin:/usr/local/bin"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig:$HOME/lib/pkgconfig"
export LOCATE_PATH="$HOME/.locate.db"
export MANPATH="$MANPATH:$HOME/share/man"
export INFOPATH="$INFOPATH:$HOME/share/info"
export LD_LIBRARY_PATH="/usr/local/lib:$HOME/lib/"
export TEXINPUTS=".:$HOME/latex/:"

if test x`uname` == xDarwin; then
  alias ls='ls -GF'
else
  alias ls='ls --color=auto -F'
fi
alias ll='ls -l'
alias la='ls -A'
alias lla='la -l'
alias time='/usr/bin/time'
alias vi='vim'
alias screen='screen -U'
alias cal='cal -m > /dev/null 2>&1 && cal -m || ncal -M'
alias personality='cat ~/.bash_history | sort | uniq -c | sort -rn | head -n15'
alias grep='grep --color'
alias pst="pstree -pu $USER"
alias rtorrent='nice ionice -n7 rtorrent'
alias buildtorrent="buildtorrent -a \
	http://tracker.openbittorrent.com:80/announce"
alias dus='du -s * | sort -g'
alias mem="ps x -o rss= | xargs | sed 's/ /\+/g' | bc"
alias pryr='pry -I. -r config/environment'
alias o=xdg-open
alias ..='cd ..'
alias -- -='cd -'

# Git!
alias gst='git status -s -b'
alias gsh='git show'
alias gco='git commit'
alias gcoa='git commit -a'
alias gdi='git diff'
alias gdic='gdi --cached'
alias gfa='git fetch --all'
alias gitka='gitk --all'
alias glg='git log --graph --oneline --decorate'
alias glag='git log --all --graph --oneline --decorate'
alias gch='git checkout'
alias gs='git stash'
alias gsp='git stash pop'

if test x`uname` != xDarwin; then
  eval `TERM=xterm dircolors -b`
fi

test -f ~/.private.sh && source ~/.private.sh

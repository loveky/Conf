# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin


PS1='\[\e[0;31m\]\# \[\e[m\]\[\e[0;32m\]\u\[\e[m\]\[\e[0;33m\]@\[\e[m\]\[\e[0;36m\]\h\[\e[m\]\[\e[0;33m\]@\[\e[m\]\[\e[1;31m\]\t\[\e[m:\e[0;36m\]\w\[\e[m\]\n=> '
export PATH PS1

shopt -s cdspell
set -o vi

export HISTTIMEFORMAT='%F %T '

alias grep="grep --color"

# Set the $TERM to xterm-256color for tmux to support 256 colour
export TERM='xterm-256color'
alias tmux="tmux -2"

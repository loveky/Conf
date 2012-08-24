# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/opt/local/bin/


PS1='\[\e[0;31m\]\# \[\e[m\]\[\e[0;32m\]\u\[\e[m\]\[\e[0;33m\]@\[\e[m\]\[\e[0;36m\]\h\[\e[m\]\[\e[0;33m\]@\[\e[m\]\[\e[1;31m\]\t\[\e[m:\e[0;36m\]\w\[\e[m\]\n=> '
export PATH PS1

shopt -s cdspell
set -o vi

export HISTTIMEFORMAT='%F %T '

alias grep="grep --color"

alias tmux="tmux -2"

alias ls="ls -G"

source /sw/bin/init.sh

alias bash="bash --init-file ~/.bash_profile"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm gemset use rails3.2.3 >> /dev/null
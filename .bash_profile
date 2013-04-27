# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/opt/local/bin/

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\e[0;31m\]\# \[\e[m\]\[\e[0;32m\]\u\[\e[m\]\[\e[0;33m\]@\[\e[m\]\[\e[0;36m\]\h\[\e[m\]\[\e[0;33m\]@\[\e[m\]\[\e[1;31m\]\t\[\e[m:\e[0;36m\]\w\[\e[m\]\[\033[0;35m\] $(parse_git_branch)\[\e[m\]\n=> '
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


// add alias for Cygwin
if uname | grep -i 'cygwin_nt' >> /dev/null
then
   alias clear='printf "\x1b\x5b\x48\x1b\x5b\x32\x4a"'
fi

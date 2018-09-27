# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias la='ls -la'
alias view='vim -R'


# Git completion
source ~/.my_ext/git-completion.bash


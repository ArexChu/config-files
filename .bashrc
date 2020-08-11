# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Get os name via uname
_os="$(uname)"

# add variable as per os using $_os
case $_os in
	Linux) 	
		alias ls='ls --color=auto'
	;;
	Darwin) 
		alias ls='ls -G'
	;;
esac

# alias
alias vi="vim"
alias emacs="emacs -nw"

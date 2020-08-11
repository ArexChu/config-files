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

# prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

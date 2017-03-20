# Get os name via uname
_os="$(uname)"

# add variable as per os using $_os
case $_os in
	Linux) 	
    	alias ls='ls --color=auto'
		export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
	;;

	Darwin) 
		alias ls='ls -G'
	;;
esac

# prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -n "$JAVA_HOME" ]; then
	export PATH=$JAVA_HOME/bin:$PATH
fi

# history
HISTSIZE=
HISTFILESIZE=

# alias
alias vi="vim"

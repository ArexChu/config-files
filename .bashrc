# Get os name via uname
_os="$(uname)"

# add variable as per os using $_os
case $_os in
	Linux) 	
		export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    	alias ls='ls --color=auto'
	;;

	Darwin) 
#ls color
		alias ls='ls -G'
	;;
esac

#prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -n "$JAVA_HOME" ]; then
	export PATH=$JAVA_HOME/bin:$PATH
fi

HISTSIZE=
HISTFILESIZE=

export PATH=$PATH:~/bin

alias vi="vim"

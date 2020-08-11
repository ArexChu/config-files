# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# Get os name via uname
_os="$(uname)"

# add variable as per os using $_os
case $_os in
        Linux)
                PATH=$PATH:$HOME/bin
        ;;
	Darwin) 
                PATH=$PATH:$HOME/bin:/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/bin:$HOME/Android-sdk/platform-tools
	;;
esac

export PATH

# prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# history
HISTSIZE=
HISTFILESIZE=

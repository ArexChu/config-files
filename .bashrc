# Get os name via uname
_os="$(uname)"

# add variable as per os using $_os
case $_os in
	Linux) 	
		alias ls='ls --color=auto'
		export GTK_IM_MODULE=fcitx
		export QT_IM_MODULE=fcitx
		export XMODIFIERS="@im=fcitx"
	;;
	Darwin) 
		alias ls='ls -G'
		export PATH="/Applications/wechatwebdevtools.app/Contents/Resources/app.nw/bin:$PATH"
		export PATH="$HOME/.fastlane/bin:$PATH"
	;;
esac

# prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Android-sdk/platform-tools:$PATH"

# history
HISTSIZE=
HISTFILESIZE=

# alias
alias vi="vim"
alias emacs="emacs -nw"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


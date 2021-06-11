# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export PATH

# Get os name via uname
_os="$(uname)"

# add variable as per os using $_os
case $_os in
	Linux) 	
		export PYENV_ROOT="$HOME/.pyenv"
		PATH=$PATH:$PYENV_ROOT/bin
		export PATH
		eval "$(pyenv init --path)"
	;;
esac

# history
HISTSIZE=
HISTFILESIZE=

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

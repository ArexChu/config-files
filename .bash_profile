if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

nohup ss-local -c Templates/shadowsocks.json &>/dev/null &

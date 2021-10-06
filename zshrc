export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="crunch"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias conf="vim ~/.zshrc"
alias install="clear; apt install"
alias search="clear; apt search"
alias yt="youtube-dl"
alias ytmp3="youtube-dl --extract-audio --audio-format mp3"

alias open="termux-open"
#alias connect="nc 192.168.50.214 8000"

listen() {

	clear

	echo -e "IP: "
	ip a | grep 192.168 | awk '{print $2}'

	nc -lv 9000


}

alias ip="echo -e '\n'; ip a | grep /24 | awk '{print $2}'; echo -e '\n'"

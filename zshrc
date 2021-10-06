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

alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ga='git add'
alias gr='git rm'
alias gd='git diff'
alias gl='git log'

alias ip="echo ''; echo "$(ip a | grep /24 | awk '{print $2}')"; echo ''"


listen() {

	clear
	ip a | grep /24 | awk '{print $2}'
	echo -e "IP: "

	nc -lv 9000


}


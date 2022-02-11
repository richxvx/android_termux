export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="crunch"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias conf="vim ~/.zshrc"
alias install="apt install -y"
alias search="apt search"
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

alias tools='sel=$(ls ~/linux_files/scripts | fzf) && vim ~/linux_files/scripts/$sel'

listen() {

	clear
	ip a | grep /24 | awk '{print $2}'
	echo -e "IP: "

	nc -lv 9000


}


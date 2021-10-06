#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage

apt update
apt upgrade -y
apt install -y vim zsh openssh wget htop netcat-openbsd

sshd

cp vimrc ~/.vimrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions


exit

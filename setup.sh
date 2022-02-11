#!/data/data/com.termux/files/usr/bin/bash

# ========== initial setup ===========

termux-setup-storage

apt update
apt upgrade -y
apt install -y vim fzf zsh python3 wget htop netcat-openbsd

python3 -m pip install --upgrade pip

pip3 install youtube-dl -U

cp ~/android_termux/vimrc ~/.vimrc


# ========== symlinks to most used directories ===========
cd ~/

ln -s ~/storage/downloads ~/
ln -s ~/../usr/bin ~/


# ========== copy scripts from my main repo ===========

git clone https://github.com/richxvx/linux_files.git ~/

cp ~/linux_files/scripts/* ~/bin


# ========== setup oh-my-zsh ===========

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ~/android_termux/zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions




exit

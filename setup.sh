#!/data/data/com.termux/files/usr/bin/bash

border="========================================="

# ========== Initial setup ===========

clear

echo -e "\n\n$border"
echo -e "\t Initial setup"
echo -e "$border \n\n"

termux-setup-storage

read -p "Press enter to start: "

apt update
apt upgrade -y
apt install -y vim fzf zsh python3 wget htop netcat-openbsd

python3 -m pip install --upgrade pip

pip3 install youtube-dl -U

cp ~/android_termux/vimrc ~/.vimrc

# ========== Symlink setup ===========

echo -e "\n\n$border"
echo -e "\t Setting symlinks"
echo -e "$border \n\n"

ln -s ~/storage/downloads ~/
ln -s ~/../usr/bin ~/
ln -s ~/storage/shared/Snapseed


# ========== Copying scripts from linux_files repo ===========

echo -e "\n\n$border"
echo -e "\t Copying scripts from main repo"
echo -e "$border \n\n"

git clone https://github.com/richxvx/linux_files.git ~/linux_files

cp ~/linux_files/scripts/* ~/bin


# ========== Setup oh-my-zsh ===========

echo -e "\n\n$border"
echo -e "\t Setting up ZSH"
echo -e "$border \n\n"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions

cp ~/android_termux/zshrc ~/.zshrc


exit

#!/bin/bash
echo -n Password: 
read -s pw

OHMYZSH=$HOME/.oh-my-zsh
echo "$OHMYZSH exists."
rm -rf "$OHMYZSH"
echo "Remove $OHMYZSH"
echo "install oh-my-zsh"
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# echo $pw | sudo -S -k apt-get install software-properties-common
# echo $pw | sudo -S -k apt-add-repository -y ppa:rael-gc/rvm
# echo $pw | sudo -S -k apt-get update
# echo $pw | sudo -S -k apt-get install rvm
# echo $pw | sudo -S -k usermod -a -G rvm $USER
# rvm install ruby
# gem install colorls
# echo $pw | sudo -S -k apt install ruby
bash link.sh

# bash font.sh

source ~/.zshrc

echo $pw | sudo -S -k chsh -s $(which zsh)

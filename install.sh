#!/bin/bash
# declare pw="11234"

OHMYZSH=$HOME/.oh-my-zsh
echo "$OHMYZSH exists."
rm -rf "$OHMYZSH"
echo "Remove $OHMYZSH"
echo "install oh-my-zsh"
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


# echo $pw | sudo -S -k apt install tilix -y
bash link.sh

source ~/.zshrc

chsh -s $(which zsh)

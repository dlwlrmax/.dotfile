#!/bin/bash
# declare pw="11234"

OHMYZSH=$HOME/.oh-my-zsh
echo "$OHMYZSH exists."
rm -rf "$OHMYZSH"
echo "Remove $OHMYZSH"
echo "install oh-my-zsh"
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# echo $pw | sudo -S -k apt install tilix -y
bash link.sh

source ~/.zshrc

chsh -s $(which zsh)

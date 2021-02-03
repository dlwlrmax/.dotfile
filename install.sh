#!/bin/bash
# declare pw="11234"

OHMYZSH=~/.oh-my-zsh
if [ -d "$OHMYZSH" ]; then
    echo "$OHMYZSH exists."
	rm -rf "$OHMYZSH"
	echo "Remove $OHMYZSH"
	echo "install oh-my-zsh"
	echo "11234" | sudo -S -k sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else 
	echo "install oh-my-zsh"
	echo "11234" | sudo -S -k sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi


# echo $pw | sudo -S -k apt install tilix -y
bash link.sh

source ~/.zshrc
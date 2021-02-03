#!/bin/bash
# declare pw="11234"

OHMYZSH=~/.oh-my-zsh
if [ -d "$OHMYZSH" ]; then
    echo "$OHMYZSH exists."
else 
	echo "install oh-my-zsh"
	echo "11234" | sudo -S -k sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
fi

# echo $pw | sudo -S -k apt install tilix -y
bash link.sh
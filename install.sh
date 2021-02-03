#!/bin/bash
declare -a arr=(".zshrc" ".gitconfig")
declare pw="11234"

OHMYZSH=~/.oh-my-zsh
if [ -d "$OHMYZSH" ]; then
    echo "$OHMYZSH exists."
else 
	echo "install oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# echo $pw | sudo -S -k apt install tilix -y
for i in "${arr[@]}"
do
	echo "remove ~/$i"
	rm ~/"$i"
	echo "link ~/.dotfile/"$i" ~/"$i""
   	ln -s ~/.dotfile/"$i" ~/"$i"
  	# or do whatever with individual element of the array
done
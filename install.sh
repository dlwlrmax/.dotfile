#!/bin/bash
declare -a arr=(".zshrc" ".gitconfig")
declare pw="11234"

OHMYZSH=~/.oh-my-zsh
if [ -d "$OHMYZSH" ]; then
    echo "$OHMYZSH exists."
else 
    echo "$OHMYZSH does not exist."
fi

# echo $pw | sudo -S -k apt install tilix -y
for i in "${arr[@]}"
do
	# echo "remove ~/$i"
	rm ~/"$i"
   	ln -s ~/.dotfile/"$i" ~/"$i"
  	# or do whatever with individual element of the array
done
#!/bin/bash
declare -a arr=(".zshrc" ".gitconfig")
declare pw="11234"
## now loop through the above array
for i in "${arr[@]}"
do
	rm ~/"$i"
   	ln -s ~/.dotfile/"$i" ~/"$i"
   # or do whatever with individual element of the array
done

echo $pw | sudo -S -k apt install tilix -y

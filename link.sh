#!/bin/bash
declare -a arr=(".zshrc" ".gitconfig" )

for i in "${arr[@]}"
do
	echo "remove ~/$i"
	rm ~/"$i"
	echo "link ~/.dotfile/"$i" ~/"$i""
   	ln -s ~/.dotfile/"$i" ~/"$i"
  	# or do whatever with individual element of the array
done
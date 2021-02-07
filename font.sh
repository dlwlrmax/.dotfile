#!/bin/bash
echo -n Enter your Password: 
read -s pw
echo "create font folder"
echo $pw |sudo -S -k mkdir -p ~/.local/fonts 

echo $pw |sudo -S -k cp ~/.dotfile/font/* ~/.local/fonts

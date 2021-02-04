#!/bin/bash
echo -n Password: 
read -s pw
echo "create font folder"
echo $pw |sudo -S -k mkdir -p /usr/local/share/fonts/nerd-fonts/

echo $pw |sudo -S -k cp ~/.dotfile/font/* /usr/local/share/fonts/nerd-fonts/
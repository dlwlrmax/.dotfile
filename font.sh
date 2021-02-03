#!/bin/bash
pw="11234"
echo "create font folder"
echo $pw |sudo -S -k mkdir -p /usr/local/share/fonts/nerd-fonts/

echo $pw |sudo -S -k cp ~/.dotfile/font/ /usr/local/share/fonts/nerd-fonts/
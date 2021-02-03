#!/bin/bash
pw="11234"
echo $pw |sudo -S -k mkdir /usr/local/share/fonts/nerd-font
echo $pw |sudo -S -k cp ~/Downloads/*.ttf /usr/local/share/fonts/nerd-fonts/
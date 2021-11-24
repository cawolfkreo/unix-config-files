#!/bin/zsh
# Ascii art taken from:
#       https://github.com/kadekillary/dotfiles/blob/master/nvim/init.vim

secondMsg=("\t\t    Good luck with your hacking! 😎")
secondMsg+=("\t\t     What are we hacking today?👨‍💻")
sizeSecond=${#secondMsg[@]}
random=$(shuf -i 1-$sizeSecond -n 1)
secondMsg="${secondMsg[$random]}"

autoload colors; colors
message=$(< $ZDOTDIR"/message.txt")
echo $fg[red]$message
echo
echo $fg[yellow]"\t\t\tWelcome $USER to Zsh"
echo $secondMsg

#!/bin/zsh
# Ascii art taken from:
#       https://github.com/kadekillary/dotfiles/blob/master/nvim/init.vim

secondMsgArr=("\t\t    Good luck with your hacking! 😎")
secondMsgArr+=("\t\t     What are we hacking today?👨‍💻")
sizeSecond=${#secondMsgArr[@]}
random=$(shuf -i 1-"$sizeSecond" -n 1)
secondMsg="${secondMsgArr[$random]}"

autoload colors; colors
message="$(< "$ZDOTDIR/message.txt")"
echo "${fg[red]}$message"
echo
echo "${fg[yellow]}\t\t\tWelcome $USER to Zsh"
echo "$secondMsg"

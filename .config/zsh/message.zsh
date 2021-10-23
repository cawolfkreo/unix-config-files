#!/bin/zsh
# Ascii art taken from:
#       https://github.com/kadekillary/dotfiles/blob/master/nvim/init.vim
autoload colors; colors
message=$(< $ZDOTDIR"/message.txt")
echo $fg[red]$message
echo
echo $fg[yellow]"\t\t\tWelcome "${USER}" to Zsh"
echo $fg[yellow]"\t\t    Good luck with your hacking! 😎"

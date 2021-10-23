#!/bin/zsh
# Ascii art taken from:
#       https://github.com/kadekillary/dotfiles/blob/master/nvim/init.vim
autoload colors; colors
message=$(< $ZDOTDIR"/message.txt")
echo $fg[red]$message

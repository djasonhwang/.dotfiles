#!/bin/bash 
rm ~/.vimrc #removes .vimrc file
line="source ~/.dotfiles/etc/bashrc_custom"
sed -i -e '/$line/d' ~/.bashrc #deletes the line "source ~/.dotfiles/etc/bashrc_custom" from the bashrc file
rm -rf ~/.TRASH #deletes the .TRASH directory

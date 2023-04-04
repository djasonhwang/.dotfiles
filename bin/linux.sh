#!/bin/bash

touch linuxsetup.log #creates the set up log
unamestr=$(uname)
linux="Linux"
if [ $unamestr = 'Linux' ]; then #tests if the output of uname -s is equal to "Linux" 
	echo "Operating System type: Linux" #if true, it will simply confirm to the user that it is Linux
else
	echo "Error: Operating System type is not Linux." >> linuxsetup.log #if not, it will send the error message to the log
	exit #and then it will exit the terminal
fi
mkdir -p ~/.TRASH #creates the .TRASH directory
touch ~/.vimrc
mv ~/.vimrc ~/.bup_vimrc #renames the home directory .vimrc file
echo "Changed .vimrc to .bupvimrc." >> linuxsetup.log #prints to the setup log that the rename has happened
cat ~/.dotfiles/etc/vimrc >> ~/.vimrc #copies the contents of the .vimrc in the .dotfiles directory to the home directory .vimrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #prints the line of code to the end of the .bashrc 

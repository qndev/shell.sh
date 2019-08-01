#!/usr/bin/env bash
###################################################################
#                               
# Git Config with Command Line Arguments
#
# Execute/Run via: 
#  ./git_config.sh "Dinh Quang Nguyen" quangnd.hust@gmail.com vim
#
# Example output:
#  git version 2.11.0
#  user.name=Dinh Quang Nguyen
#  user.email=quangnd.hust@gmail.com
#  core.editor=vim
#
# Note: Make the script executable by running:
#  chmod +x git_config.sh
#
###################################################################

git --version
if [ $? -ne 0 ]; then
	echo "You must install git first."
	echo "Do you want to install Git? [Y/n]"
	read confirm
	if [ "$confirm" = "Y" ]; then
		sudo apt-get install git
	fi
else
	git config --global user.name "$1"
	git config --global user.email "$2"
	git config --global core.editor "$3"
	git config --list
fi

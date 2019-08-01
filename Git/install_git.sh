#!/usr/bin/env bash
# +++++++++++++++++++++++++++++++++++++++++++++
#                               
# Install Git
#
# Execute/Run via: 
#  ./install_git.sh
#
# Example output:
#  git version 2.11.0
#  Git installed
#
# Note: Make the script executable by running:
#  chmod +x install_git.sh
#
# +++++++++++++++++++++++++++++++++++++++++++++

# Debian/Ubuntu
git --version
if [[ $? -eq 0 ]]; then
	echo "Git installed"
else
	sudo apt-get install git
fi

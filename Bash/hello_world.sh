#!/usr/bin/env bash
# +++++++++++++++++++++++++++++++++++++++++++++
#                               
# Hello World with User Input
#
# Execute/Run via: 
#  ./hello_world.sh
#
# Example output:
#  Hello, What's your name?
#  Dinh Quang
#  Nice to meet you, Dinh Quang.
#
# Note: Make the script executable by running:
#  chmod +x hello_world.sh
#
# +++++++++++++++++++++++++++++++++++++++++++++

echo "Hello, What's your name?"
read name
echo "Nice to meet you, $name."

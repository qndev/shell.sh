#!/bin/bash
# read_command.sh
# Author: Dinh Quang
# Date: Sat Aug  3 18:23:04 +07 2019

read -p "Username: " username
read -t 10 -sp "Password: " password
echo
# if [ "$username" == "" ] || [ "$password" == "" ]; then
if [ -z "$username" ] && [ -z "$password" ]; then
  echo "Username and Password must not be NULL"
elif [ -z "$password" ]; then
  echo "Timed out"
else
  echo "Your Username: $username"
  echo "Your Password: $password"
fi

exit 0

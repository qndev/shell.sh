#!/bin/bash
# ----------------------------------------------------------------
# Script Name: reverse_number.sh
# ----------------------------------------------------------------
# Author: Dinh Quang
# Date: Aug 03 2019
# ----------------------------------------------------------------
# Description: Reverse a Number using a while loop
# ----------------------------------------------------------------
# Execute/Run via: ./reverse_number.sh argument
# ----------------------------------------------------------------
# Standard Output:
#  ./reverse_number.sh                 | .reverse_number.sh 12345
#  You need input an argument:         | Reversed Number: 54321
#  ./reverse_number.sh argument/number |
#  For eg: ./reverse_number.sh 12345   |
#  It will print: 54321                |
# ----------------------------------------------------------------

if [ "$#" -ne 1 ]; then
  echo -e "You need input an argument:\n$0 argument/number"
  echo "For eg: $0 12345"
  echo "It will print: 54321"
  exit 1
fi

number=$1
reversed=0
while [ "$number" -ne 0 ]; do
  remainder=$(($number % 10))
  reversed=$(($reversed * 10 + remainder))
  number=$(($number / 10))
done
echo "Reversed Number: $reversed"

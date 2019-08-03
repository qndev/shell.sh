#!/bin/bash
# --------------------------------------------------------
# Script Name: shell-for-loop-01.sh
# --------------------------------------------------------
# Author: Dinh Quang
# Date: Aug 03 2019
# --------------------------------------------------------
# Description: The following script using for loop
#              to print the following pattern on screen:
#              0
#              11
#              222
#              3333
#              44444
#              555555
#              n.....n
# --------------------------------------------------------
# Execute/Run via: ./shell-for-loop-01.sh
#                  ./shell-for-loop-01.sh argument
# --------------------------------------------------------
# Standard Output:
#  ./shell-for-loop-01.sh      | ./shell-for-loop-01.sh 5
#  You need input an argument! | 0
#  Type here: 5                | 11
#  0                           | 222
#  11                          | 3333
#  222                         | 44444
#  3333                        | 555555
#  44444                       |
#  555555                      |
# --------------------------------------------------------

for_loop() {
  argument=$1
  for (( i = 0; i <= $argument; i++ )); do
    for (( j = 0; j <= i; j++ )); do
      echo -n "$i"
      # echo -n "$j"
      # echo -n "*"
    done
    echo ""
  done

  # for (( i = $argument; i >= 0; i-- )); do
  #   for (( j = 0; j <= i; j++ )); do
  #     echo -n "$i"
  #     # echo -n "$j"
  #     # echo -n "*"
  #   done
  #   echo ""
  # done
}

if [ "$#" -eq 0 ]; then
  echo "You need input an argument!"
  read -p "Type here: " input
  for_loop $input
else
  for_loop $1
fi

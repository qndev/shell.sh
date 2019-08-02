#!/bin/bash
################################################
#                                              #                 
# Variables                                    #
#                                              #
# Execute/Run via:                             #
#  ./variables.sh                              #
#                                              #
# Note: Make the script executable by running: #
#  chmod +x variables.sh                       #
#                                              #
################################################
FIRST_NAME="QUANG"
LAST_NAME=NGUYEN\ DINH
ADDRESS='Hanoi, Vietnam'
echo $FIRST_NAME $LAST_NAME
echo "$FIRST_NAME $LAST_NAME"
echo "${FIRST_NAME} $LAST_NAME"
echo "Your \$ADDRESS:" \'$ADDRESS\' 
echo 'Your $ADDRESS:' \'$ADDRESS\'

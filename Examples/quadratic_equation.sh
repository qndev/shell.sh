#!/bin/bash
################################################
#                                              #                 
# Quadratic equation User Input                #
#                                              #
# Execute/Run via:                             #
#  ./quadratic_equation.sh                     #
#                                              #
# Note: Make the script executable by running: #
#  chmod +x quadratic_equation.sh              #
#                                              #
################################################

echo "Quadratic equation: ax^2 + bx + c = 0"
echo "-------------------------------------"

echo "Nhap a: "
read a
echo "Nhap b: "
read b
echo "Nhap c: "
read c

if [ "$a" -eq 0 ]; then
  if [ "$b" -eq 0 ]; then
    if [ "$c" -eq 0 ]; then
      echo "Phuong trinh co vo so nghiem!"
    else
      echo "Phuong trinh vo nghiem!"
    fi
  else
    result=$(echo "scale=2; -$c/$b" | bc)
    # result=`echo "scale=2; -$c/$b" | bc`
    echo "Phuong trinh co nghiem duy nhat la: $result"
    # result="scale=2; -$c/$b"
    # echo $result | bc
    # echo "Phuong trinh co nghiem duy nhat la: " 
    # echo "scale=2; -$c/$b" | bc
  fi
else
  delta=$(( $b*$b - 4*$a*$c ))
  sqrt_delta=$(echo "scale=2; sqrt($delta)" | bc -l)
  # sqrt_delta=`echo "scale=2; sqrt($delta)" | bc -l`
  echo "Delta: $delta"
  echo "Sqrt Delta: $sqrt_delta"
  if [ "$delta" -lt 0 ]; then
    echo "Phuong trinh vo nghiem!"
  elif [ "$delta" -eq 0 ]; then
    x=$(echo "scale=2; (-$b /(2 * $a))" | bc)
    echo "Phuong trinh co nghiem kep la: $x"
  else
    echo "Phuong trinh co 2 nghiem phan biet la: "
    x1=$(echo "scale=2; (-$b - $sqrt_delta)/(2*$a)" | bc -l)
    # x1=$(echo "scale=2; -($b + sqrt($delta))/(2*$a)" | bc -l)
    echo "x1: $x1"
    x2=$(echo "scale=2; (-$b + $sqrt_delta)/(2*$a)" | bc -l)
    # x2=$(echo "scale=2; -($b - sqrt($delta))/(2*$a)" | bc -l)
    echo "x2: $x2"
  fi
fi

exit $?

exit

# Quadratic equation with Command Line Arguments

##################################################
#                                                #
# Execute/Run via:                               #
#  ./quadratic_equation.sh 1 5 4                 #
#                                                #
# Example output:                                #
#  Delta: 9                                      #
#  Sqrt Delta: 3.00                              #
#  Phuong trinh co 2 nghiem phan biet la:        #
#  x1: -4.00                                     #
#  x2: -1.00                                     #
#                                                #
##################################################

if [ "$1" -eq 0 ]; then
  if [ "$2" -eq 0 ]; then
    if [ "$3" -eq 0 ]; then
      echo "Phuong trinh co vo so nghiem!"
    else
      echo "Phuong trinh vo nghiem!"
    fi
  else
    result=$(echo "scale=2; -$3/$2" | bc)
    echo "Phuong trinh co nghiem duy nhat la: $result"
  fi
else
  delta=$(( $2*$2 - 4*$1*$3 ))
  sqrt_delta=$(echo "scale=2; sqrt($delta)" | bc -l)
  echo "Delta: $delta"
  echo "Sqrt Delta: $sqrt_delta"
  if [ "$delta" -lt 0 ]; then
    echo "Phuong trinh vo nghiem!"
  elif [ "$delta" -eq 0 ]; then
    x=$(echo "scale=2; (-$2/(2*$1))" | bc)
    echo "Phuong trinh co nghiem kep la: $x"
  else
    echo "Phuong trinh co 2 nghiem phan biet la: "
    x1=$(echo "scale=2; (-$2 - $sqrt_delta)/(2*$1)" | bc -l)
    echo "x1: $x1"
    x2=$(echo "scale=2; (-$2 + $sqrt_delta)/(2*$1)" | bc -l)
    echo "x2: $x2"
  fi
fi

exit $?

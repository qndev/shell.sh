#!/bin/bash

echo "Lich Can Chi"
echo "-------------------------------------"

echo "Nhap nam can quy doi: "
read year

thien_can=$(("($year-3) % 10"))
dia_chi=$(("($year-3) % 12"))

case $thien_can in
  1) can="Giap";;
  2) can="At";;
  3) can="Binh";;
  4) can="Dinh";;
  5) can="Mau";;
  6) can="Ky";;
  7) can="Canh";;
  8) can="Tan";;
  9) can="Nham";;
  0|10) can="Quy";;
  *) echo "Sorry, I don't understand";;
esac

case $dia_chi in
  1) chi="Ty";;
  2) chi="Suu";;
  3) chi="Dan";;
  4) chi="Mao";;
  5) chi="Thin";;
  6) chi="Ty";;
  7) chi="Ngo";;
  8) chi="Mui";;
  9) chi="Than";;
  10) chi="Dau";;
  11) chi="Tuat";;
  0|12) chi="Hoi";;
  *) echo "Sorry, I don't understand";;
esac

echo "$can $chi"

exit

# Command Line Argument: ./can_chi.sh 1996
if [ "$#" -eq 1 ]; then
  soducan=`expr $1 % 10`
  soduchi=`expr $1 % 12`

  case $soducan in
    0) can="Canh";;
    1) can="Tan";;
    2) can="Nham";;
    3) can="Quy";;
    4) can="Giap";;
    5) can="At";;
    6) can="Binh";;
    7) can="Dinh";;
    8) can="Mau";;
    9) can="Ky";;
    *) can="Error";;
  esac

  case $soduchi in
    0) chi="Than";;
    1) chi="Dau";;
    2) chi="Tuat";;
    3) chi="Hoi";;
    4) chi="Ty";;
    5) chi="Suu";;
    6) chi="Dan";;
    7) chi="Mao";;
    8) chi="Thin";;
    9) chi="Ty";;
    10) chi="Ngo";;
    11) chi="Mui";;
    *) chi="Error";;
  esac

  echo "$can $chi"
else
  echo "Need an argument"
fi

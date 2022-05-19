#!/bin/bash

echo "Input 1"
read input1
echo "Input 2"
read input2
echo " Chose your option: "
echo " 1. Add(+)		2. Sub(-)		3.Mul(*)		4.Div(/) "
read option 

SUM=$((input1+input2))
SUB=$((input1-input2))
MUL=$((input1*input2))
DIV=$((input1/input2))



case $option in
	1) echo " The summation (+) is $SUM";;
	2) echo " The substraction (-) is $SUB";;
	3) echo " The multiplication (*) is $MUL";;
	4) echo " The division (/) is $DIV";;
	
esac






#!/bin/bash

echo "Hi! I am your master. You need help? Please chose your problem: "
echo "1/ Solving quadratic equation "
echo "2/ Calculate the area of ​​the circle "
echo "3/ Determine prime number "

read option 

prob1 () {
	echo " Enter your three elements a,b,c following ax^2 +bx +c = 0 "
	echo -n "a: "
	read a 
	echo -n "b: "
	read b
	echo -n "c: "
	read c
	delta=$(echo "$b^2 - 4*$a*$c" | bc)
	if [ $delta -lt 0 ]; then
     		echo "Equation has no solution"
	elif [ $delta -eq 0 ]; then
     		echo -n "Equation has 1 root solution x= "
    		x=$(echo "scale=2; -$b/(2*$a)" | bc)
     		echo "$x"
	else
     		echo "Equation has 2 solutions: "
    		 x1=$(echo "scale=2; -($b + sqrt($delta))/(2*$a)" | bc)
     		echo "x1= $x1"
     		x2=$(echo "scale=2; -($b - sqrt($delta))/(2*$a)" | bc)
     		echo "x2= $x2"
fi
exit 0
}

prob2 () {
	echo "Enter the radius : "
	read r
	echo "Area of the Circle is"
	echo "3.14 * $r * $r" | bc
}

prob3 () {
	echo -n "Enter Number : "
	read n
	for((i=2; i<=$n/2; i++))
	do
	  ans=$(( n%i ))
  	if [ $ans -eq 0 ]
  	then
   	 echo "$n is not a prime number."
   	 exit 0
  	fi
	done
	echo "$n is a prime number."
	
}

case $option in
	1) prob1 ;;
	2) prob2 ;;
	3) prob3 ;;
esac
	


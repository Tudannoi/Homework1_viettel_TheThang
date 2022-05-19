#!/bin/bash

echo " Enter your integer: "
printf "" 
read n
gt=1

for (( i=1; i <= $n; ++i))
do
	echo $i 
	gt=$((gt*$i)) 
done

echo " Factorial is: $gt "
	

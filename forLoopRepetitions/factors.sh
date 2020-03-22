#!/bin/bash -x

echo "Enter Number"
read number 

for (( counter=1; counter<=$(($number/2)); counter++))
do
	if [ $(($number % $counter )) -eq 0 ];
	then 
		echo $counter
	fi
done
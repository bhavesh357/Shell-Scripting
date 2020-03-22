#!/bin/bash -x

echo "Enter number"
read number
isPrime=true
for (( counter=2; counter<=$(($number/2)); counter++ ))
do
	if [ $(($number % counter )) -eq 0 ];
	then 
		isPrime=false
	fi	
done
echo $isPrime
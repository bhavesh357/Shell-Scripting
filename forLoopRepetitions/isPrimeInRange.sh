#!/bin/bash 

echo "Enter starting number"
read lower
echo "Enter upper number"
read upper


for (( counter1=lower; counter1<=upper; counter1++))
do
	isPrime=1
	for (( counter=2; counter<=$(($counter1/2)); counter++ ))
	do
		if [ $(($counter1 % $counter )) -eq 0 ];
		then 
			isPrime=0
		fi	
	done
	if [ $isPrime -eq 1 ]
	then
		echo $counter1
	fi
done

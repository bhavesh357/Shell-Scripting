#!/bin/bash -x

echo "think of number between 1 to 100"
lower=1
upper=100
flag=0
while [ $flag -lt 1 ] 
do
	middle=$(($(($upper+$lower))/2))
	echo "is number greater than $middle yes or no"
	read answer
	if [ "$answer" = "yes" ];
	then
		if [ $(($lower+1)) -eq $upper ]
		then
			flag=1
		fi
		lower=$middle
	else
		if [ $(($lower+1)) -eq $upper ]
		then
			flag=2
		fi
		upper=$middle
	fi		
done
if [ $flag -eq 2 ]
then
	echo $lower
else
	echo $upper
fi
#!/bin/bash -x

echo "Enter Number"
read num 
power=1
count=0
#counting till power reached
while [ $count -le $num ]
do
	#checking if less than 256
	if [ $power -le 256 ]
	then
		echo $power
		power=$(($power*2))
	fi
	((count++))
done
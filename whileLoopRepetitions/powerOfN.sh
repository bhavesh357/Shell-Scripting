#!/bin/bash -x

echo "Enter Number"
read num 
power=1
count=0
while [ $count -le $num ]
do
	if [ $power -le 256 ]
	then
		echo $power
		power=$(($power*2))
	fi
	((count++))
done
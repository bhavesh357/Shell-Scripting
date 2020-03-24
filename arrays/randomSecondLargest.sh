#!/bin/bash -x

count=0
smallest=998
secondSmallest=999

while [ $count -lt 10 ]
do
	numbers[count]=$(($(($RANDOM%900))+100))
	if [ ${numbers[count]} -lt $smallest ]
	then
		secondSmallest=$smallest
		smallest=${numbers[count]}
	elif [ ${numbers[count]} -lt $secondSmallest ]
	then
		secondSmallest=${numbers[count]}
	fi
	((count++))
done

echo ${numbers[@]}
echo $secondSmallest
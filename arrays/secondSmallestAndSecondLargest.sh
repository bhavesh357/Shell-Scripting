#!/bin/bash -x

count=0

while [ $count -lt 10 ]
do
	numbers[count]=$(($(($RANDOM%900))+100))
	((count++))
done

echo ${numbers[@]}
#sorting the array
for ((i=0;i<$count;i++))
do
	smallest=999
	indexOfSmallest=$i
	for ((j=$i;j<$count;j++))
	do

		#finding smallest from i index
		if [ ${numbers[j]} -lt $smallest ]
		then
			smallest=${numbers[j]}
			indexOfSmallest=$j
		fi
	done
	#swapping the numbers
	temp=${numbers[i]}

	numbers[i]=${numbers[indexOfSmallest]}
	numbers[indexOfSmallest]=$temp
done

echo ${numbers[@]}
echo second Smallest ${numbers[1]}
echo second Largest ${numbers[8]}
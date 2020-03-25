#!/bin/bash -x






declare -A dice

flag=0

dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

while [ $flag -eq 0 ]
do
	rolledNo=$(($(($RANDOM%6))+1))
	value=${dice[$rolledNo]}
	if [ $value -eq 9 ]
	then
		flag=1
	fi
	dice[$rolledNo]=$(($value+1));		
done
echo "${!dice[@]}"
echo "${dice[@]}"
minKey=6
maxKey=1
noOfKeys=${#dice[@]}
for ((key=1;key<$noOfKeys;key++))
do
	value=${dice[$key]}
	if [ $value -gt ${dice[$maxKey]} ]
	then
		maxKey=$key
	fi
	if [ $value -lt ${dice[$minKey]} ]
	then
		minKey=$key
	fi
done

echo $maxKey ${dice[maxKey]}
echo $minKey ${dice[minKey]}

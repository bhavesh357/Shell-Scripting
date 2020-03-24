#!/bin/bash -x

function getReverse() {
	reverse=""
	num=$1
	while [ $num -gt 1 ]
	do
		remainder=$(($num%10))
		reverse="$reverse$remainder"
		num=$(($num/10))
	done
	echo $reverse
}

function isPalindrome() {
	if [ "$1" = "$2" ] 
	then
		echo 1
	else
		echo 0
	fi
}

i=0
for (( counter=0; counter<100; counter++ ))
do
	reverse=$( getReverse $counter )
	isPalindrome=$( isPalindrome $counter $reverse )
	if [ $isPalindrome -eq 1 ]
	then
		numbers[((i++))]=$counter
	fi 
done

echo ${numbers[@]}
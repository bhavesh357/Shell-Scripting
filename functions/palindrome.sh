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
	first=$( getReverse $1 ) 
	if [ "$first" = "$2" ] 
	then
		echo Palindrome
	else
		echo Not a Palindrome
	fi
}

echo "Enter Numbers"
read num1 num2
isPalindrome $num1 $num2


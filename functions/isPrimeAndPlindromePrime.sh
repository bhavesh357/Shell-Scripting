#!/bin/bash -x

function isPrime() {
	prime=1
	counter=2
	while [[ $prime -gt 0 && $counter -le $(($1/2)) ]]
	do
		if [ $(($prime % $counter )) -eq 0 ]
		then 
			prime=0
		fi
		((counter++))
	done
	echo $prime
}

function getPalindrome() {
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

echo "Enter Number"
read number
prime=$( isPrime $number )
if [ $prime -eq 1 ]
then
	echo number is prime
	palindrome=$( getPalindrome $number )
	palindromePrime=$( isPrime $palindrome )
	if [ $palindromePrime -eq 1 ]
	then 
		echo palindrome is prime
	fi
else
	echo number is not prime
fi

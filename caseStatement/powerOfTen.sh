#!/bin/bash -x

read -p "Enter Number" number 
word="Enter proper number in power of 10"

case $number in 
		1)
			word=One
			;;
		10)
			word=Ten
			;;
		100)
			word=Hundred
			;;
		1000)
			word=Thousand
			;;
		10000)
			word="Ten Thousand"
			;;
esac
echo $word
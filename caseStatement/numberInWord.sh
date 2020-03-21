#!/bin/bash -x

read -p "Enter Number" number 
word="Enter proper single digit number"

case $number in 
		0)
			word=Zero
			;;
		1)
			word=One
			;;
		2)
			word=Two
			;;
		3)
			word=Three
			;;
		4)
			word=Four
			;;
		5)
			word=Five
			;;
		6)
			word=Six
			;;
		7)
			word=Seven
			;;
		8)
			word=Eight
			;;
		9)
			word=Nine
			;;
esac
echo $word
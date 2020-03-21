#!/bin/bash -x

read -p "Enter Number" number 
word="Enter proper single digit number"

if [ $number -eq 0 ];
then 
	word="Zero"
elif [ $number -eq 1 ];
then 
	word="One"
elif [ $number -eq 2 ];
then 
	word="Two"
elif [ $number -eq 3 ];
then 
	word="Three"
elif [ $number -eq 4 ];
then 
	word="Four"
elif [ $number -eq 5 ];
then 
	word="Five"
elif [ $number -eq 6 ];
then 
	word="Six"
elif [ $number -eq 7 ];
then 
	word="Seven"
elif [ $number -eq 8 ];
then 
	word="Eight"
elif [ $number -eq 9 ];
then 
	word="Nine"
fi
echo $word
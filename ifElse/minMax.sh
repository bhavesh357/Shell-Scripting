#!/bin/bash -x

read -p "Enter first number: " x
read -p "Enter second number: " y
read -p "Enter third number " z
#addMultiply
b=$(( $x + $y))
addMultiply=$(( $b * $z))

#modAdd
b=$(( $x % $y))
modAdd=$(( $b + $z))

#addDivide
b=$(( $x + $y))
addDivide=$(( $b / $z))

#multiplyAdd
b=$(( $x * $y))
multiplyAdd=$(( $b + $z))

#getting Min & Max
min=$multiplyAdd
max=$multiplyAdd
if [ $addMultiply -gt $max ]
then
	max=$(($addMultiply))
elif [ $modAdd -gt $max ]
then
	max=$(($modAdd))
elif [ $addDivide -gt $max ]
then
	max=$(($addDivide))
fi

echo $max

if [ $addMultiply -lt $min ]
then
	min=$(($addMultiply))
elif [ $modAdd -lt $min ]
then
	min=$(($modAdd))
elif [ $addDivide -lt $min ]
then
	min=$(($addDivide))
fi

echo $min
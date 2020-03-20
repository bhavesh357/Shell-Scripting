#!/bin/bash -x

read -p "Enter first number: " x
read -p "Enter second number: " y
read -p "Enter third number " z
b=$(( $x + $y))
a=$(( $b * $z))
echo $a

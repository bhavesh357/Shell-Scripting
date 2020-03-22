#!/bin/bash -x

echo "Enter number"
read number
fact=1
for (( counter=1; counter<=$number; counter++))
do
	fact=$(( $fact * $counter))
done

echo $fact
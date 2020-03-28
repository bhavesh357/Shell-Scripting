#!/bin/bash -x
function myFunc() {
	echo $1
}

result="$( myFunc $((RANDOM%2)) )"
if [ $result -eq 1 ]
then
	echo "success"
else
	echo "failure"
fi
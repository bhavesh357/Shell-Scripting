#!/bin/bash -x

read -p "Enter inches" inches 
echo $(($inches/12)) ft $(($inches%12)) inches

# Power of 2 using while loop
#! /bin/bash

read -p "Enter the nth number: "  number

counter=0

result=0


while (($counter<= $number &&  $result < 256))
do
	result=$((2**counter))

	echo $result

	counter=$((counter+1))
done

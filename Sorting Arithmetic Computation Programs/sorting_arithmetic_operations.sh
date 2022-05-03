#!/bin/ bash
# Sorting Arithmetic Computation Problem

# UC1 take three inputs – number1, number2, number3
read -p "Enter first number: " number1

read -p "Enter second number: " number2

read -p "Enter third number: " number3

echo "The numbers are: $number1 $number2 $number3"

# UC2- UC5 Arithmetic expressions
first=$(($number1+$number2*$number3))
second=$(($number1*$number2+$number3))
third=$(($number3+$number1/$number2))
fourth=$(($number1%$number2+$number3))

echo "$number1+$number2*$number3 = $first"
echo "$number1*$number2+$number3 = $second"
echo "$number3+$number1/$number2 = $third"
echo "$number1%$number2+$number3 = $fourth"

# UC6- UC7 store into dictionary and array
declare -A dict
declare -a array

dict=([first]="$first" [second]="$second" [third]="$third" [fourth]="$fourth")

i=0
for values in "${!dict[@]}"
do
	array[i++]="${dict[$values]}"
done

echo "The computation results of array is: ${array[@]}"

# UC8 the sorting of computational result in descending order
array=($(printf '%d\n' "${array[@]}" | sort -nr))

echo "To sort in Decending Order:"
echo "${array[@]}"

# UC9 the sorting of computational result in ascending order
array=($(printf '%d\n' "${array[@]}" | sort -n))
echo "To sort in Ascending Order:"
echo "${array[@]}"

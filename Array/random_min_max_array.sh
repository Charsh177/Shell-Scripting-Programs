#! /bin/bash

# generate 3 digit random number
function generateRandomNumber() {

randomNumber=$((RANDOM%1000))

echo $randomNumber

}

# Find the 2nd largest number & 2nd smallest number
function findSecondLargest() {
randomNumbers=("$@")

largestNumber=${randomNumbers[0]}
secondLargestNumber=${randomNumbers[0]}
smallestNumber=${randomNumbers[0]}
secondSmallestNumber=${randomNumbers[0]}

length="${#randomNumbers[@]}"

for ((counter=1; counter < $length ; counter++))
do
	if [ $largestNumber -lt ${randomNumbers[$counter]} ]
	then
		secondLargestNumber=$largestNumber
		largestNumber=${randomNumbers[$counter]}
	elif [ $secondLargestNumber -lt  ${randomNumbers[$counter]} ]
	then
		 secondLargestNumber=${randomNumbers[$counter]}

	fi
	if [ $smallestNumber -gt ${randomNumbers[$counter]} ]
        then
                secondSmallestNumber=$smallestNumber
                smallestNumber=${randomNumbers[$counter]}
        elif [ $secondSmallestNumber -gt  ${randomNumbers[$counter]} ]
        then
                 secondSmallestNumber=${randomNumbers[$counter]}

        fi

done

echo "Second Largest number is $secondLargestNumber"
echo "Second Smallest number is $secondSmallestNumber"
}

# Store the random number to the unsorted array

function storeRandomNumber() {

counter=0

while [ $counter -lt 10 ]
do
	randomNumberArray[((counter++))]=$(generateRandomNumber)
done

echo ${randomNumberArray[@]}

findSecondLargest ${randomNumberArray[@]}
}

storeRandomNumber

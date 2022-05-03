# Sorted Array example
# Generate three digit random number and print

function generateRandomNumber() {

randomNumber=$((RANDOM%1000))

echo $randomNumber


}

# Find the second largest number

function sortTheArray() {
randomNumbers=("$@")


length="${#randomNumbers[@]}"

for (( counterOne = 0; counterOne < ${#randomNumbers[@]}; counterOne++ ))
do
	for (( counterTwo = $counterOne; counterTwo < ${#randomNumbers[@]}; counterTwo++ ))
	do
		if [ ${randomNumbers[$counterOne]} -gt ${randomNumbers[$counterTwo]}  ];
		then
			temp=${randomNumbers[$counterOne]}
			randomNumbers[$counterOne]=${randomNumbers[$counterTwo]}
			randomNumbers[$counterTwo]=$temp
		fi
	done
done
echo "Sorted array is " ${randomNumbers[@]}
echo "Second Largest number is ${randomNumbers[ $(( ${#randomNumbers[@]}-2 )) ]}"
echo "Second Smallest number is ${randomNumbers[1]}"
}

# Store the random number to the unsorted array

function storeRandomNumber() {

counter=0

while [ $counter -lt 10 ]
do
	randomNumberArray[((counter++))]=$(generateRandomNumber)
done

echo ${randomNumberArray[@]}

sortTheArray ${randomNumberArray[@]} 
}

storeRandomNumber

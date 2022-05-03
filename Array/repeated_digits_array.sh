# Repeated digits array

#/bin/bash

declare -a repeatedNumArray
countArray=0
for ((counter=10 ; counter < 100 ; counter++ ))
do
    if [ $((counter%10)) -eq   $(((counter/10)%10)) ]
    then
        repeatedNumArray[((countArray++))]=$counter
    fi

done

echo "Repeated number is ${repeatedNumArray[@]} "

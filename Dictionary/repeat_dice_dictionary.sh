#! /bin/bash 

diceResult=(0 0 0 0 0 0 0)

function rollDice() {
    echo $((RANDOM%6+1))
}

function findMaxMinDice() {
resultDice=("$@")
max=${resultDice[1]}
maxDice=1
min=${resultDice[1]}
minDice=1
for ((counter=2; counter < ${#resultDice[@]} ; counter++))
do
    if [ $max -lt ${resultDice[$counter]} ]
    then
        max=${resultDice[$counter]}
        maxDice=$counter
    fi

    if [ $min -gt ${resultDice[$counter]} ]
    then
        min=${resultDice[$counter]}
        minDice=$counter
    fi
done

echo "Dice with max times $maxDice and min times $minDice "

}


function checkMaxDiceTimes() {
    prevResult=$1
    if [  $prevResult -eq 10 ]
    then
        isPresentMax=1
    else
        isPresentMax=0
    fi

    echo $isPresentMax
}

while ((1))
do
    dice=$(rollDice)
    if [[ $( checkMaxDiceTimes ${diceResult[$dice]} ) -eq 1 ]]
    then
        break
    else
        diceResult[((dice))]=$((diceResult[((dice))]+1))
        if [[ $( checkMaxDiceTimes ${diceResult[$dice]} ) -eq 1 ]]
        then
            break
        fi
    fi
done
echo "Dice Roll Times \n"
for i in " ${!diceResult[@]}"
do
    echo "$i:${diceResult[$i]}"
done
findMaxMinDice ${diceResult[@]}

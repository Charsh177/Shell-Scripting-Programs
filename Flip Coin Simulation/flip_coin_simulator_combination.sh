#!/bin/bash

echo "flip Coin Simulator"

echo "number of times user want to flip the coin"
read flip
echo $flip

countHH=0
countTT=0
countTH=0
countHT=0
declare -A noOfCounts
for((i=0;i<flip;i++))
do
if [ $((RANDOM%4)) -eq 0 ]
then
((countHH++))
elif [ $((RANDOM%4)) -eq 1 ]
then
((countTT++))
elif [ $((RANDOM%4)) -eq 2 ]
then
((countTH++))
else
((countHT++))
fi
done
echo "HH="$countHH
echo "TT="$countTT
echo "TH="$countTH
echo "HT="$countHT

noOfCounts[hh]=$countHH
noOfCounts[tt]=$countTT
noOfCounts[th]=$countTH
noOfCounts[ht]=$countHT

echo ${noOfCounts[@]}

PercentageOfTT=$((100*$countTT/$flip))
echo "Percentage of TT= "$PercentageOfTT
PercentageOfHH=$((100*$countHH/$flip))
echo "Percentage of HH= "$PercentageOfHH
PercentageOfTH=$((100*$countTH/$flip))
echo "Percentage of TH= "$PercentageOfTH
PercentageOfHT=$((100*$countHT/$flip))
echo "Percentage of HT= "$PercentageOfHT

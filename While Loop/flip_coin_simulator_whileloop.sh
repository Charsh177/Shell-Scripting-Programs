# Flip coin using while loop
#!/bin/bash 

echo "flip Coin Simulator"

echo "number of times user want to flip the coin"
read flip
echo $flip
countHead=0
countTail=0
declare -A noOfCounts
for((i=0;i<flip;i++))
do
if [ $((RANDOM%2)) -eq 1 ]
then
((countHead++))
else
((countTail++))
fi
done
echo "head="$countHead
echo "tail="$countTail

noOfCounts[tail]=$countTail
noOfCounts[head]=$countHead

echo ${noOfCounts[@]}



function winning(){

array=($(for size in ${noOfCounts[@]}
do
echo $size
done | sort ))
echo "sorted value"
echo ${array[@]}
lastindex=$((${#array[@]}-1))

MaxWin=${array[$lastindex]}
for i in ${!noOfCounts[@]}
do
 if [ ${noOfCounts[$i]} -eq $MaxWin ]
 then
     echo "maximum times win= "$i
   fi
done
}

winning

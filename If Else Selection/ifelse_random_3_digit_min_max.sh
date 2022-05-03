# Write a program that reads 5 Random 3 Digit values and 
# then outputs the minimum and the maximum value

a="$(( (RANDOM % 900) + 100 ))"
b="$(( (RANDOM % 900) + 100 ))"
c="$(( (RANDOM % 900) + 100 ))"
d="$(( (RANDOM % 900) + 100 ))"
e="$(( (RANDOM % 900) + 100 ))"

if [ $a -ge $b ] && [ $a -ge $c ] && [ $a -ge $d ] && [ $a -ge $e ]
then
	echo $a "is max"

elif [ $b -ge $a ] && [ $b -ge $c ] && [ $b -ge $d ] && [ $b -ge $e ]
then
	echo $b "is max"

elif [ $c -ge $a ] && [ $c -ge $b ] && [ $c -ge $d ] && [ $c -ge $e ]
then
        echo $c "is max"

elif [ $d -ge $a ] && [ $d -ge $b ] && [ $d -ge $c ] && [ $d -ge $e ]
then
        echo $d "is max"

else
	echo $e "is max"
fi


if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ]
then
	echo $a "is min"

elif [ $b -lt $a ] && [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ]
then
	echo $b "is min"

elif [ $c -lt $a ] && [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $e ]
then
        echo $c "is min"

elif [ $d -lt $a ] && [ $d -lt $b ] && [ $d -lt $c ] && [ $d -lt $e ]
then
        echo $d "is min"

else
	echo $e "is min"

fi

# Enter 3 Numbers do following arithmetic operation and
# find the one that is maximum and minimum

read -p "Enter 1st Number : " a
read -p "Enter 2nd Number : " b
read -p "Enter 3rd Number : " c


w=$(($a+$b*$c))
x=$(($a%$b+$c))
y=$(($c+$a/$b))
z=$(($a*$b+$c))

if [ $w -ge $x ] && [ $w -ge $y ] && [ $w -ge $z ]
then
	echo "$w is maximum number"

elif [ $x -ge $w ] && [ $x -ge $y ] && [ $x -ge $z ]
then
        echo "$x is maximum number"

elif [ $y -ge $w ] && [ $y -ge $x ] && [ $y -ge $z ]
then
        echo "$y is maximum number"

else
        echo "$z is maximum number"

fi


if [ $w -lt $x ] && [ $w -lt $y ] && [ $w -lt $z ]
then
        echo "$w is minimum number"

elif [ $x -lt $w ] && [ $x -lt $y ] && [ $x -lt $z ]
then
        echo "$x is minimum number"

elif [ $y -lt $w ] && [ $y -lt $x ] && [ $y -lt $z ]
then
        echo "$y is minimum number"

else
        echo "$z is minimum number"

fi

times=21
tails=0
heads=0
flip_count=0
min_difference=2
while (( 1 ))
do
	((flip_count++))
	toss=$(( RANDOM%2 ))
	if (( toss==0 ))
	then
	     printf "\n"
	     echo "Head"
	     ((heads++))
	else
	    printf "\n"
	    echo "Tail"
	    ((tails++))
	fi

	difference=$(( heads-tails ))

	if ((heads == times && difference >= min_difference ))
	then
		echo "Head wons by $difference"
		break
	elif ((tails == times && ${difference#-} >= min_difference ))
	then
		echo "Tail won by ${difference#-}"
		break
	fi
done
echo "Flip Coins count is: "
printf "\n"
echo "The total Heads count is $heads and The total Tails count is $tails"

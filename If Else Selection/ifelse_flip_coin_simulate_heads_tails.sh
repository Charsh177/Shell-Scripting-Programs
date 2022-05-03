# Head Tails Program Random

Result=$((RANDOM%2))

if [[ ${Result} -eq 0 ]];
then
	echo HEADS

elif [[ ${Result} -eq 1 ]];
then
	echo TAILS

fi

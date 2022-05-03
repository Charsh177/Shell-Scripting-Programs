# Use Random to get Dice Number between 1 to 6

R=$(( (RANDOM%6) + 1 ))

echo "Dice Number is : " $R

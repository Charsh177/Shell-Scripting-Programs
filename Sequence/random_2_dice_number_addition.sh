# Add two random Dice Numbers and Display Results

dice1=$(( (RANDOM % 6) + 1)) ;
dice2=$(( (RANDOM % 6) + 1)) ;

sum=$((dice1+dice2))
echo "Addition of Two Dice Numbers is == " $sum


# Write a program that reads 5 Random 2 Digit values,
# then find their sum and the average

n1="$(( (RANDOM%90) +10))"
n2="$(( (RANDOM%90) +10))"
n3="$(( (RANDOM%90) +10))"
n4="$(( (RANDOM%90) +10))"
n5="$(( (RANDOM%90) +10))"


sum=$(($n1+$n2+$n3+$n4+$n5))

echo "The Sum of Five Numbers is =: " $sum

Avg=$(($sum/5))

echo "The Average of Five Numbers sum is =: " $Avg

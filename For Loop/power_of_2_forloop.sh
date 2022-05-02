# for loop powers of 2 that are less than or equal to 2^n.

read -p "Enter the number: " number
read -p "Enter the power: " power

power_of_number=1

for ((i=1; i<=$power; i++))
do

	power_of_number=$((power_of_number * number))
done

echo "$number ^ $power is : $power_of_number"
echo -e "\n"
# OR

read -p "Enter the nth number : " number

for(( count=0; count<number; count++))
do
	echo $((2**count))
done

# Prime factorization of number

read -p "Enter the Number to find factors : " num

declare a primeFactors
counter=0
primeFactorsOf=$num

for ((count=2 ; count<= $num ; count++))
do
	while (( $num%$count == 0 ))
	do
		primeFactors[((counter++))]=$count
		num=$((num/count))
	done
done

echo "Prime factors of $primeFactorsOf is ${primeFactors[@]}"

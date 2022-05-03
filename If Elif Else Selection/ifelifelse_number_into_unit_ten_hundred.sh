
# Read a Number 1, 10, 100, 1000, etc and display unit ten, hundred,...

read -p "Enter a number in range of 1, 10, 100, 1000.... : " num


if [ $num -eq 1 ]
then
	echo "ONE" ;

elif [ $num -eq 10 ]
then
	echo "TEN" ;

elif [ $num -eq 100 ]
then
        echo "ONE HUNDRED" ;

elif [ $num -eq 1000 ]
then
        echo "ONE THOUSAND" ;

elif [ $num -eq 10000 ]
then
        echo "TEN THOUSAND" ;

elif [ $num -eq 100000 ]
then
        echo "ONE LAC" ;
else
	echo "Please Enter a valid number" ;
fi

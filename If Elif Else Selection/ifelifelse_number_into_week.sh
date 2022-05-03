# Read a Number and Display the week day (Sunday, Monday,...)

read -p "Enter a numer between 1 to 7 : " x


if [ $x -gt 7 ]
then
        echo "Please Enter a Number between 1 to 7 " ;

elif [ $x -eq 1 ]
then
        echo "Monday" ;

elif [ $x -eq 2 ]
then
        echo "Tuesday" ;

elif [ $x -eq 3 ]
then
        echo "Wednesday" ;

elif [ $x -eq 4 ]
then
        echo "Thursday" ;

elif [ $x -eq 5 ]
then
        echo "Friday" ;

elif [ $x -eq 6 ]
then
        echo "Saturday" ;

else
        echo "Sunday" ;

fi

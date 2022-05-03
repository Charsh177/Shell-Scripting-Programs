# Write a program that takes User Inputs and does Unit Conversion of
# different Length units
# 1. Feet to Inch 3. Inch to Feet
# 2. Feet to Meter 4. Meter to Feet

read -p "Enter a Number : " x

inch=$(($x*12))

case $x in

	*) echo "$x feet is equal to $inch inches" ;;
esac

meter=`echo $x | awk '{print $x/3.281}'` ;

case $x in

	*) echo "$x feet is equal to $meter meters" ;;
esac

feet=`echo $x | awk '{print $x/12}'` ;

case $x in

	*) echo "$x inches is equal to $feet feet" ;;
esac

feets=`echo $x | awk '{print $x*3.281}'` ;

case $x in

	*) echo "$x meter is equal to $feets feet" ;;

esac


# Read a Number and display unit in string

read -p "Enter a value in range of 1, 10, 100 ... etc : " n

case "$n" in

	1) echo "One" ;;

	10) echo "Ten" ;;

	100) echo "One Hundred" ;;

	1000) echo "One Thousand" ;;

	10000) echo "Ten Thousand" ;;

	100000) echo "One Lac" ;;

	1000000) echo "One Million" ;;

	10000000) echo "One Crore" ;;

	100000000) echo "Ten Crore" ;;

	1000000000) echo "One Billion" ;;

	*) echo "please enter value in range of 1, 10, 100... 1b only" ;;

esac

# Read a Single digit Number and write the Number in Word

read -p "Enter a single digit number between 0 to 9 : " num


case "$num" in

	0) echo "ZERO" ;;
	1) echo "ONE" ;;
        2) echo "TWO" ;;
        3) echo "THREE" ;;
        4) echo "FOUR" ;;
        5) echo "FIVE" ;;
        6) echo "SIX" ;;
        7) echo "SEVEN" ;;
        8) echo "EIGHT" ;;
        9) echo "NINE" ;;
	*) echo "***ENTER A VALID NUMBER***" ;;
esac

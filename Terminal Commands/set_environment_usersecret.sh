# Set environment usersecret="dH34xJaa23" if its already not set

case $usersecret in
	" ") echo "setting environment variable to dH34xJaa23"
		usersecret='dH34xJaa23'
	;;

	*) echo "environment variable already set"
	;;
esac


# 1ft = 12 in then 42 in = ? ft

read -p "Enter value to convert INCH to FEET: " x

y=0.08333

z=`echo $x $y | awk '{print($1*$2)}'`


	echo "The $x INCH is equal to $z FEET"

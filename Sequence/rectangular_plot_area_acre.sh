# Rectangular Plot of 60 feet x 40 feet in meters

W=60

H=40

Meter=`echo $W $H | awk '{print($1*$2)*0.09290304}'` ;

echo "The Rectangular Plot of $W and $H is $Meter Meter"


# Calculate Area of 25 such Plots in Acre

a=25

Area=`echo $a $Meter | awk '{print($1*$2)/4047}'` ;

echo "The Total $Area Acre area is required for 25 plots of $Meter meters"

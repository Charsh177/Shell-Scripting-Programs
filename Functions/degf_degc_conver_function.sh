#! /bin/bash

echo "Fahrenheit to Celsius"
read -p "Degree in Celsius= " degC
degF=$(( (degC*9/5)+32 ))
echo "Faherenhiet =" $degF
echo
echo "Celsius to Fahrenheit"
read -p "Degree in Fahreheit= " degF
degC=$(( (degF-32)*5/9 ))
echo "Celsius =" $degC

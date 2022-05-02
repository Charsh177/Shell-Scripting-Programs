# Data Analysis / manipulation (Awk)

## i)

awk '$4 > 10000 && $7 > 10000 {print $2 " " $7}' data.csv

## ii)

cat data.csv | grep -i captain | awk '{sum+=$7}END{print sum/NR}'

## iii)

awk '($5 >= 7000 && $5 <= 10000) {print $3 " " $5}' data.csv

## iv)

awk '{sum+=$4}END{print sum/NR}' data.csv

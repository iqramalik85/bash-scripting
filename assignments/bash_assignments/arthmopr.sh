#! /bin/bash
# performing arithmetic operations



echo -e " Enter the First number \c: $num1 "
read num1
echo -e " Enter the secend number \c: $num2 "
read num2


echo "$num1 + $num2" | bc
echo "$num1 - $num2" | bc
echo "$num1 * $num2" | bc
echo "$num1 / $num2" | bc
echo "$num1 % $num2" | bc
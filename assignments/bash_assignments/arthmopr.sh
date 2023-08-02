#! /bin/bash
# performing arithmetic operations



read -p " Enter the First number : " num1 
read -p " Enter the secend number : " num2


echo "$num1 + $num2" | bc
echo "$num1 - $num2" | bc
echo "$num1 * $num2" | bc
echo "$num1 / $num2" | bc
echo "$num1 % $num2" | bc

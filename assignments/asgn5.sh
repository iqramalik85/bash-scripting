echo "hi"
read -p 'Enter 1st number:' var_1
read -p 'Enter 2nd number:' var_2
mod=$((var_1 % var_2))
echo "the module of $var_1 and $var_2 is : $mod"

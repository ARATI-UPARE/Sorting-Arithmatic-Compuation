#! /bin/bash  -x

# WAP to take read three numbers from user and find result of arithmatic operations.
read -p "Enter Three Numbers " a b c
echo "a=$a b=$b c=$c "

#Computation of a+b*c
result1=$(( a + b * c ))
echo "Result1=$result1"

# Equation2 (a*b+c)
result2=$(( a * b + c ))
echo "Result2=$result2"

# Equation3 (c+a/b)
result3=`echo "scale=2; $c + $a / $b " | bc`
echo "Result3=$result3"

# Equation4 (a%b+c)
result4=`echo "scale=2; $a % $b + $c " | bc`
echo "Result4=$result4"

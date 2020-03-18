#! /bin/bash  -x

# WAP to take read three numbers from user and find result of arithmatic operations.
read -p "Enter Three Numbers " a b c
echo "a=$a b=$b c=$c "

#Computation of a+b*c

result1=$(( a + b * c ))
echo "Result1=$result1"



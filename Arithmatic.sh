#! /bin/bash  -x

# WAP to take read three numbers from user
# find result of arithmatic operations.
# Add all results in dictionary.
# Add array to read result from dictionary.

echo "#### Welcome to Arithmatic Computation ####"
declare -A dict
declare -a array

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

# Dictionary to store result

dict=( [R1]=$result1 [R2]=$result2 [R3]=$result3 [R4]=$result4 )

# Read elements of dictionary in array
count=0
for key in "${!dict[@]}"
do
				array[$count]=${dict[$key]}
				(( count++ ))
done
echo ${array[@]}

# Sorting array in Desending order
temp=0
length=${#array[@]}        # length of array

for(( outLoop=0; outLoop<=$length; outLoop++ ))
do
		for(( inLoop=$(( $outLoop + 1 )); inLoop<=$length; inLoop++ ))
		do
				if [[ ${array[outLoop]%%.*} -lt ${array[inLoop]%%.*} ]]
				then
						temp="${array[$outLoop]}"
						array[$outLoop]="${array[$inLoop]}"
						array[$inLoop]=$temp
				fi
		done
done

echo "Sorted Array in Desending order :"
echo "${array[@]}"

# Sorting Array in Ascending order.

for(( outLoop=0; outLoop<=$length; outLoop++ ))
do
      for(( inLoop=$(( $outLoop + 1 )); inLoop<=$length; inLoop++ ))
      do
            if [[ ${array[outLoop]%%.*} -gt ${array[inLoop]%%.*} ]]
            then
                  temp="${array[$outLoop]}"
                  array[$outLoop]="${array[$inLoop]}"
                  array[$inLoop]=$temp
            fi
      done
done

echo "Sorted Array in Ascending order :"
echo "${array[@]}"


















































































































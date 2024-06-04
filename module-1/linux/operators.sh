#!/bin/bash

# Assigning values to variables
num1=10
num2=20

# Comparing num1 and num2 using operators:
# -eq : Equal to
# -gt : Greater than
# -lt : Less than
if [ $num1 -eq $num2 ]; then
    echo "Numbers are equal"
elif [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is less than $num2"
fi

#!/bin/bash

#  Create script table.sh that asks user to input number 
#  and then using for loop print multiplication table from 1 to 10
#

# ask user to input a number
#

echo
echo "Script will iterate from 1 to 10 and multiply a given number"
echo

read -p "Please enter a positive integer: " num
echo

for i in {1..10};do echo $num x $i = $((num * i));done
echo

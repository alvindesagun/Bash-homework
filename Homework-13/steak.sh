#!/bin/bash

# ask the user to input meat temperature and print the message: 
# rare - for 120-130 
# medium rare - for 131-140 
# medium - for 141-150 
# medium well - for 151-160 
# well done - for 161-170  

echo
read -p "Enter your desired meat temperature: " temp
echo

if [ $temp -ge 120 ] && [ $temp -le 130 ]; then
	echo "You asked for rare"
elif [ $temp -ge 131 ] && [ $temp -le 140 ]; then
        echo "You asked for medium rare"
elif [ $temp -ge 141 ] && [ $temp -le 150 ]; then
        echo "You asked for medium"
elif [ $temp -ge 151 ] && [ $temp -le 160 ]; then
        echo "You asked for medium well"
elif [ $temp -ge 161 ] && [ $temp -le 170 ]; then
        echo "You asked for well done"
else
	echo "Your request is out of range"
fi

echo



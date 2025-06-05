#!/bin/bash

# asks the user to input his year of birth calculate his age (meaning how old user will be in 2025) 
# also calculate how old the user was in 2020 and how old the user will be in 2030  

echo
read -p 'What year were you born? ' birth_year

age_2025=$((2025-$birth_year))

echo
echo "This year (2025), you will be $age_2025"
echo

echo "In year 2030, you will be $(($age_2025+5))"
echo

#!/bin/bash

input_array=()

echo
for i in name age favorite_language hobby dream; do
        read -p "Enter your $i: " input
        read -a temp_array <<< "$input"
        input_array=("${input_array[@]}" "${temp_array[@]}")
done

echo
echo "Hi, my name is ${input_array[0]}, and I'm ${input_array[1]} years old. Every morning, ${input_array[0]} likes to spend time ${input_array[3]}. As a ${input_array[1]}-year-old, I believe it's never too late to follow your dreams. My favorite programming language is ${input_array[2]}. I code in ${input_array[2]} almost every day! One day, I hope my love for ${input_array[2]} will help me achieve my dream of ${input_array[4]}. When I'm not busy working toward ${input_array[4]}, you'll find me ${input_array[3]} to relax. That's a little about me, ${input_array[0]} — a ${input_array[1]}-year-old who loves ${input_array[2]}, enjoys ${input_array[3]}, and dreams of ${input_array[4]}!"
echo


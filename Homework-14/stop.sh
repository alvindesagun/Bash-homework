#!/bin/bash

# script will use while loop and  keep asking user to 
# input different words until they type "stop" 

echo
echo "Script will ask user to enter some words and script will echo those words out"
echo "Script will stop once user types in 'stop'"
echo

# while loop
while [[ "$input" != "stop" ]]; do
  # Prompt the user for an input
  read -p "Please enter a word (type 'stop' to end): " input
  echo "You typed '$input'"
  echo
done

echo "You typed 'stop' so the script has ended."
echo

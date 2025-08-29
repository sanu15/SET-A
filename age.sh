#!/bin/bash

# Prompt user for age
read -p "Enter your age: " age

# Validate input is a number
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a numeric age."
  exit 1
fi

# Classify age
if [ "$age" -lt 13 ]; then
  echo "You are classified as a Child."
elif [ "$age" -ge 13 ] && [ "$age" -le 19 ]; then
  echo "You are classified as a Teenager."
else
  echo "You are classified as an Adult."
fi

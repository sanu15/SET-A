#!/bin/bash

# Prompt user for salary input
read -p "Enter your salary: " salary

# Validate input is a number
if ! [[ "$salary" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a numeric salary."
  exit 1
fi

# Calculate tax based on salary brackets
if [ "$salary" -le 20000 ]; then
  tax=0
elif [ "$salary" -le 40000 ]; then
  tax=$(echo "$salary * 0.05" | bc)
else
  tax=$(echo "$salary * 0.10" | bc)
fi

# Display result
echo "Salary: ₹$salary"
echo "Calculated Tax: ₹$tax"~

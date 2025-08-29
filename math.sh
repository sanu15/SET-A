#!/bin/bash

# Prompt user for two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Prompt user for operation type
echo "Choose operation:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
read -p "Enter choice (1/2/3): " choice

# Perform operation based on user input
case $choice in
  1)
    result=$((num1 + num2))
    echo "Result of Addition: $result"
    ;;
  2)
    result=$((num1 - num2))
    echo "Result of Subtraction: $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "Result of Multiplication: $result"
    ;;
  *)
    echo "Invalid choice. Please enter 1, 2, or 3."
    ;;
esac

#!/bin/bash
# Simple Interest Calculator
echo "Simple Interest Calculator"

# Read principal amount
read -p "Enter the principal amount: " principal

# Read annual rate of interest (in %)
read -p "Enter the rate of interest (in %): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Calculate simple interest: SI = (P * R * T) / 100
# Use bc for floating point arithmetic
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "The simple interest is: $interest"
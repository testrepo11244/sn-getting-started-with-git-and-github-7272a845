#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Read principal amount
read -p "Enter the principal amount: " principal

# Read annual rate of interest (in percentage)
read -p "Enter the rate of interest (in %): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "--------------------------"
echo "The simple interest is: $interest"
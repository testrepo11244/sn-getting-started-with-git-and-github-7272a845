#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "---------------------------"

# Prompt user for principal amount
read -p "Enter the principal amount (in dollars): " principal

# Prompt user for annual rate of interest
read -p "Enter the annual rate of interest (as a percentage): " rate

# Prompt user for time period in years
read -p "Enter the time period (in years): " time

# Calculate simple interest: SI = (P * R * T) / 100
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo ""
echo "Simple Interest = $interest"
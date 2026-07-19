#!/bin/bash

# Simple Interest Calculator
# Input: principal, rate of interest (annual %), time period (years)
# Output: simple interest calculated as (principal * rate * time) / 100

echo "============================================"
echo "       SIMPLE INTEREST CALCULATOR"
echo "============================================"

# Prompt for principal amount
read -p "Enter the principal amount: " principal

# Prompt for annual rate of interest
read -p "Enter the rate of interest (annual %): " rate

# Prompt for time period in years
read -p "Enter the time period (in years): " time

# Compute simple interest using bc for floating-point arithmetic
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo ""
echo "--------------------------------------------"
echo "Principal Amount     : $principal"
echo "Rate of Interest     : $rate%"
echo "Time Period          : $time years"
echo "Simple Interest      : $interest"
echo "--------------------------------------------"
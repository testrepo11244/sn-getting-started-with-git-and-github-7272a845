#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

# Read principal
read -p "Enter principal amount: " principal
# Read rate of interest
read -p "Enter rate of interest (in %): " rate
# Read time period
read -p "Enter time period (in years): " time

# Calculate simple interest using bc for floating point arithmetic
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "The simple interest is: $interest"
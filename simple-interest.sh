#!/bin/bash

# Simple Interest Calculator
# Calculates simple interest based on principal, rate of interest, and time period

echo "Simple Interest Calculator"
echo "--------------------------"

# Read principal amount
read -p "Enter the principal amount: " principal

# Read rate of interest per year
read -p "Enter the rate of interest (in % per year): " rate

# Read time period in years
read -p "Enter the time period (in years): " time

# Calculate simple interest: (principal * rate * time) / 100
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "--------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $interest"
echo "Total Amount     : $(echo "scale=2; $principal + $interest" | bc)"
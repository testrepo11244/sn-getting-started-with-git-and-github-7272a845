#!/bin/bash
# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "=========================="

read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo ""
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time year(s)"
echo "Simple Interest: $simple_interest"
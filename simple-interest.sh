#!/bin/bash
# Calculate simple interest from user inputs.
read -rp "Enter principal amount: " p
read -rp "Enter annual rate of interest (%): " r
read -rp "Enter time period (years): " t
if ! [[ "$p" =~ ^[0-9]+([.][0-9]+)?$ && "$r" =~ ^[0-9]+([.][0-9]+)?$ && "$t" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Please enter non-negative numbers."
  exit 1
fi
awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN {printf "Simple Interest: %.2f\n", p*r*t/100}'

#!/bin/bash

# Define the output file
OUTPUT_FILE="animals.txt"

# List of animal names
ANIMAL_NAMES=("Lion" "Elephant" "Tiger" "Giraffe" "Zebra" "Kangaroo" "Panda" "Koala" "Penguin" "Monkey")

# Create or overwrite the file
echo "Creating a file with animal names..."

# Write the animal names to the file
for ANIMAL in "${ANIMAL_NAMES[@]}"; do
    echo "$ANIMAL" >> "$OUTPUT_FILE"
done

# Confirm the file has been created and populated
echo "Animal names have been written to $OUTPUT_FILE"

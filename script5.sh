#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Ansh Arora

echo "Answer three questions to generate your manifesto:"
echo ""

# User input
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What would you like to build? " BUILD

# Date and output file
DATE=$(date "+%Y-%m-%d")
OUTPUT="output_$(whoami).txt"

# Create paragraph
echo "----- Open Source Manifesto -----" > $OUTPUT
echo "On $DATE, I believe that open source tools like $TOOL represent true innovation. Freedom to me means $FREEDOM. Using this freedom, I aspire to build $BUILD and contribute back to the community." >> $OUTPUT

# Display output
echo "Manifest saved in $OUTPUT"
cat $OUTPUT

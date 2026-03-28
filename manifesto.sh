5. manifesto.sh


#!/bin/bash
# Script 5: Open Source Manifesto Generator
# This script creates a personal open-source statement

# Taking user input
read -p "Tool you use: " TOOL
read -p "Meaning of freedom: " FREEDOM
read -p "What you build: " BUILD

DATE=$(date)                    # Current date
OUTPUT="manifesto.txt"         # Output file

# Writing manifesto to file
echo "On $DATE, I believe in open source." > $OUTPUT
echo "I use $TOOL daily." >> $OUTPUT
echo "Freedom means $FREEDOM." >> $OUTPUT
echo "I will build $BUILD and share it." >> $OUTPUT

# Displaying result
echo "Saved in $OUTPUT"
cat $OUTPUT
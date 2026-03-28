4. log_analyzer.sh


#!/bin/bash
# Script 4: Log File Analyzer
# This script counts occurrences of a keyword in a log file

LOGFILE=$1                      # Input log file
KEYWORD=${2:-"error"}          # Default keyword = error
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
 echo "File not found!"
 exit 1
fi

# Reading file line by line
while read LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
 COUNT=$((COUNT+1))            # Increase count
 fi
done < "$LOGFILE"

# Display results
echo "Keyword '$KEYWORD' found $COUNT times"

# Show last 5 matching lines
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
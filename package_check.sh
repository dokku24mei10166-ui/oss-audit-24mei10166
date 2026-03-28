📄 2. package_check.sh



#!/bin/bash
# Script 2: FOSS Package Inspector
# This script checks if Python is installed

PACKAGE="python3"

# Checking installation using dpkg
if dpkg -l | grep -q $PACKAGE; then
 echo "$PACKAGE is installed."
 dpkg -l | grep $PACKAGE   # Show package details
else
 echo "$PACKAGE is NOT installed."
fi

# Displaying purpose using case statement
case $PACKAGE in
 python3) echo "Python: open-source language for development" ;;
 git) echo "Git: version control system" ;;
 vlc) echo "VLC: open-source media player" ;;
 firefox) echo "Firefox: open web browser" ;;
esac
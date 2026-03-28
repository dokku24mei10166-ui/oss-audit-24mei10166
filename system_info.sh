1. system_info.sh


#!/bin/bash
# Script 1: System Identity Report
# Author: Lalith Sai
# This script displays basic system information
# Storing student and software details
STUDENT_NAME="Lalith Sai"
SOFTWARE_CHOICE="Python"

# Fetching system details
KERNEL=$(uname -r)        # Kernel version
USER_NAME=$(whoami)       # Current user
UPTIME=$(uptime -p)       # System uptime
DATE=$(date)              # Current date and time
DISTRO=$(lsb_release -d | cut -f2)  # Linux distribution
# Displaying output
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date : $DATE"
echo "Distro : $DISTRO"
echo "License : GNU GPL (Linux OS)"
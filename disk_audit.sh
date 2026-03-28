3. disk_audit.sh


#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script checks directory size and permissions

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
 PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')  # Permissions & owner
 SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)        # Directory size
 echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
 echo "$DIR does not exist"
 fi
done

# Checking Python config directory
echo "Checking Python config directory:"
ls -ld /usr/lib/python3*
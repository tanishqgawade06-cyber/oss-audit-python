#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Ansh Arora

# List of important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory and collect details
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR -> Permissions: $PERMS | Size: $SIZE"
    
    else
        echo "$DIR does not exist on this system"
    fi
done

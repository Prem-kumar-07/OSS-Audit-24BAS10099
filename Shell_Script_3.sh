#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Prem Kumar | Course: Open Source Software
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

SOFT_CONFIG="/etc/gitconfig" 

echo "Directory Audit Report"
echo "------------------------------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "LOCATION: $DIR"
        echo "  - Permissions/Owner: $PERMS"
        echo "  - Disk Usage       : $SIZE"
        echo "------------------------------------------"
    else
        echo "SKIP: $DIR does not exist on this system."
    fi
done
echo "Checking Software Configuration..."
if [ -e "$SOFT_CONFIG" ]; then
    S_PERMS=$(ls -ld $SOFT_CONFIG | awk '{print $1, $3}')
    echo "SUCCESS: Config found at $SOFT_CONFIG"
    echo "Permissions/Owner: $S_PERMS"
else
    echo "NOTICE: Configuration file $SOFT_CONFIG not found."
fi
echo "=========================================="
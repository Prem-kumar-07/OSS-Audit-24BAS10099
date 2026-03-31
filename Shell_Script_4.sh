#!/bin/bash
# Script 4: Log File Analyzer
# Author: Prem Kumar | Course: Open Source Software
# Usage: ./log_analyzer.sh /var/log/syslog [keyword]
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0
if [ ! -f "$LOGFILE" ]; then
    echo "CRITICAL ERROR: File '$LOGFILE' not found."
    exit 1
fi
while [ ! -s "$LOGFILE" ]; do
    echo "Notice: File '$LOGFILE' is empty. Waiting 5 seconds for data..."
    sleep 5
    
echo "Searching for '$KEYWORD' in $LOGFILE..."
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "------------------------------------------"
echo "ANALYSIS COMPLETE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "=========================================="
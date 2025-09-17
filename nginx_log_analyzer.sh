#!/bin/bash

# Usage: ./nginx_log_analyzer.sh access.log

LOGFILE=$1

# Check if log file is provided and not empty
if [[ -z "$LOGFILE" || ! -f "$LOGFILE" || ! -s "$LOGFILE" ]]; then
    echo "Usage: $0 <nginx_access_log_file>"
    exit 1
fi

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'
echo

echo "Top 5 most requested paths:"
awk '{print $7}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'

#!/bin/zsh

# Script 4 : System Log Analyzer
# Author : Ronit Bhat

echo "===================================="
echo "        System Log Analyzer"
echo "===================================="

LOG_FILE="/var/log/syslog"

if [ -f "$LOG_FILE" ]; then
    SOURCE="file"
else
    SOURCE="journal"
fi

echo "------------------------------"

if [ "$SOURCE" = "file" ]; then
    echo "Analyzing logs from: $LOG_FILE"

    TOTAL_LINES=$(wc -l < "$LOG_FILE")
    ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
    WARNING_COUNT=$(grep -i "warn" "$LOG_FILE" | wc -l)

    echo "Total log entries : $TOTAL_LINES"
    echo "Error entries     : $ERROR_COUNT"
    echo "Warning entries   : $WARNING_COUNT"

    echo "----------------------------------"
    echo "Recent errors (last 5):"
    grep -i "error" "$LOG_FILE" | tail -5

else
    echo "Using systemd journal (journalctl)"

    TOTAL_LINES=$(journalctl | wc -l)
    ERROR_COUNT=$(journalctl -p err | wc -l)
    WARNING_COUNT=$(journalctl -p warning | wc -l)

    echo "Total log entries : $TOTAL_LINES"
    echo "Error entries     : $ERROR_COUNT"
    echo "Warning entries   : $WARNING_COUNT"

    echo "----------------------------------"
    echo "Recent errors (last 5):"
    journalctl -p err -n 5
fi

echo "===================================="

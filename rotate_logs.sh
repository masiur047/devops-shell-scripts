#!/bin/bash
# rotate_logs.sh - rotate devops.log if it’s bigger than 1KB

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/devops.log"
ARCHIVE_DIR="$LOG_DIR/archive"

mkdir -p $ARCHIVE_DIR

# check if log file is larger than 1KB
if [ -f "$LOG_FILE" ] && [ $(stat -c%s "$LOG_FILE") -gt 1024 ]; then
    TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
    mv $LOG_FILE $ARCHIVE_DIR/devops_$TIMESTAMP.log
    echo "Log rotated. Archived as devops_$TIMESTAMP.log"
else
    echo "No rotation needed."
fi

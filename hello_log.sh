#!/bin/bash
# hello_log.sh - log "Hello DevOps" with timestamp

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/devops.log"

# create logs directory if not exists
mkdir -p $LOG_DIR

# write log with timestamp
echo "$(date '+%Y-%m-%d %H:%M:%S') - Hello DevOps" >> $LOG_FILE

echo "Log entry added to $LOG_FILE"

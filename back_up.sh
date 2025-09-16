#!/bin/bash
# backup.sh - create a tar.gz backup of project

SRC_DIR="."
BACKUP_DIR="./backups"
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
BACKUP_FILE="$BACKUP_DIR/devops_backup_$TIMESTAMP.tar.gz"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_FILE $SRC_DIR

echo "Backup created at $BACKUP_FILE"

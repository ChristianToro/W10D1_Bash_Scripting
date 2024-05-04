#!/bin/bash


# Automation Task

# Task Description: Automatically backup a specific directory from the D: drive to a 'Backup' directory located on a different drive daily.

# Step 1: Identify the repetitive task to be automated
# Task Identified: Daily backup of files from a directory on the D: drive to a 'Backup' directory with a timestamp.

# Step 2: Design and implement the automation script


SOURCE_DIR="/d/Flagship_24"  
BACKUP_DIR="/e/Backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_PATH="$BACKUP_DIR/backup_$TIMESTAMP"


mkdir -p "$BACKUP_DIR"


cp -R "$SOURCE_DIR" "$BACKUP_PATH"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_PATH"
else
    echo "Backup failed :("
    exit 1
fi

# Step 3: Test the automation script

# Testing Instructions:
# 1. Run the script: ./backup_script.sh
# 2. Check the Backup directory to see if the directory from the D: drive has been successfully copied with the current timestamp.

# Step 4: Document the development process

# Development Documentation:
# The script uses a source directory located on the D: drive.
# It performs a daily backup of this directory to a backup location in the user's E: drive with a timestamp when the script is executed.
# Error handling is implemented to check the success of the backup operation, providing feedback to the user.

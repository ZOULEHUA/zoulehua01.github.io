#!/bin/bash

# Define your script path
SCRIPT_PATH="/path/to/your/script.sh"
CRON_JOB="@reboot $SCRIPT_PATH"

# Temporary file to store existing crontab
TEMP_CRON_FILE=$(mktemp)

# Get current crontab
crontab -l > $TEMP_CRON_FILE

# Check if the cron job already exists
if ! grep -qF "$CRON_JOB" $TEMP_CRON_FILE; then
    # Append the cron job to the temporary file if it doesn't exist
    echo "$CRON_JOB" >> $TEMP_CRON_FILE
    # Install the new crontab
    crontab $TEMP_CRON_FILE
    echo "Cron job added: $CRON_JOB"
else
    echo "Cron job already exists: $CRON_JOB"
fi

# Clean up the temporary file
rm $TEMP_CRON_FILE

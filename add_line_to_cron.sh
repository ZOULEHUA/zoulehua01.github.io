#!/bin/bash
NEW_CRON_JOB="@reboot cd /Users/zlh/zoulehua01.github.io && nohup ./auto-push.sh > auto-push.log 2>&1 &"
TEMP_CRON_FILE=$(mktemp)
crontab -l > "" 2>/dev/null
if ! grep -Fq "" ""; then
  echo "" >> ""

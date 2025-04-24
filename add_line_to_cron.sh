#!/bin/bash

# 要添加到crontab的命令
NEW_CRON_JOB="@reboot cd /Users/zlh/zoulehua01.github.io && nohup ./auto-push.sh > auto-push.log 2>&1 &"

# 创建临时文件来存储现有crontab
TEMP_CRON_FILE=$(mktemp)

# 获取当前crontab任务
crontab -l > $TEMP_CRON_FILE 2>/dev/null

# 添加新任务到临时文件末尾
if ! grep -qF "$NEW_CRON_JOB" $TEMP_CRON_FILE; then
    echo "$NEW_CRON_JOB" >> $TEMP_CRON_FILE
    # 更新crontab文件
    crontab $TEMP_CRON_FILE
    echo "新cron任务已添加：$NEW_CRON_JOB"
else
    echo "cron任务已存在：$NEW_CRON_JOB"
fi

# 清理临时文件
rm $TEMP_CRON_FILE

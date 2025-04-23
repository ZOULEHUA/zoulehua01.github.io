# 增加延迟，避免快速连发导致锁文件冲突#!/usr/bin/env bash
# 自动监听仓库根目录所有变动，改动即 commit + push
fswatch -o . | while read num; do
sleep 1  git add .
  git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
done

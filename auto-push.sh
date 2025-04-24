#!/usr/bin/env bash

# 如果有残留的锁文件，先删除
[ -f .git/index.lock ] && rm .git/index.lock

# 使用 fswatch 监听目录变动并执行 commit 和 push
fswatch -o . | while read num; do
  echo "Changes detected, committing..."
  git add .
  git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
done

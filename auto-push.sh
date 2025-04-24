#!/usr/bin/env bash

fswatch -o . | while read num; do
    [ -f .git/index.lock ] && rm .git/index.lock
    echo "Changes detected, committing..."
    # Add additional Git commands here, like add, commit, and push
done

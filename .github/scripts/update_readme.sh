#!/bin/bash

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo -e "\n## Vowel Frequency Analysis" >> README.md
echo "- Updated by: $GITHUB_USER" >> README.md
echo "- Timestamp: $TIMESTAMP" >> README.md
echo "- Result: $FREQ_RESULT" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"
git config --global --add safe.directory /app

git add README.md
git commit -m "Update README with vowel frequency results" || echo "No README changes to commit"
git push
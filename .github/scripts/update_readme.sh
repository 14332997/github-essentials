#!/bin/bash

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo -e "\n## Vowel Frequency Analysis" >> README.md
echo "- Updated by: $GITHUB_USER" >> README.md
echo "- Timestamp: $TIMESTAMP" >> README.md
echo "- Result: $FREQ_RESULT" >> README.md

git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"
git config --global --add safe.directory /app

git add README.md

if git diff --cached --quiet; then
  echo "No README changes to commit"
  exit 0
fi

git commit -m "Update README with vowel frequency results"

git remote set-url origin "https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git push origin HEAD:main
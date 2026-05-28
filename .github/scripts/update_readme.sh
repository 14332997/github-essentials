#!/bin/bash

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

echo -e "\n## Vowel Frequency Analysis" >> /app/README.md
echo "- Updated by: $GITHUB_USER" >> /app/README.md
echo "- Timestamp: $TIMESTAMP" >> /app/README.md
echo "- Result: $FREQ_RESULT" >> /app/README.md
#!/bin/bash

echo "Starting Frequency Analyzer..."

FILE_PATH="${FILE:-data.txt}"

echo "Analyzing file: $FILE_PATH"

FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "/app/$FILE_PATH")

echo "Frequency result: $FREQ_RESULT"

bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process completed!"
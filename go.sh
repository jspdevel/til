#!/bin/bash

REPO_PATH=~/path/to/your/repo
AUTHOR_NAME="John Pash"
AUTHOR_EMAIL="pash.john@gmail.com"

cd "$REPO_PATH"

for day in {1..30}; do
  # Format day
  DAY=$(printf "%02d" $day)

  # Random hour (0–23), minute (0–59), second (0–59)
  HOUR=$((RANDOM % 24))
  MIN=$((RANDOM % 60))
  SEC=$((RANDOM % 60))

  # Format with leading zeros
  HOUR=$(printf "%02d" $HOUR)
  MIN=$(printf "%02d" $MIN)
  SEC=$(printf "%02d" $SEC)

  # Construct ISO datetime string
  DATE="2025-01-$DAY""T$HOUR:$MIN:$SEC"

  # Modify the file (adds a timestamped line)
  echo "Commit for $DATE" >> fakedate.txt

  git add fakedate.txt

  GIT_AUTHOR_DATE="$DATE" \
  GIT_COMMITTER_DATE="$DATE" \
  git commit --author="$AUTHOR_NAME <$AUTHOR_EMAIL>" -m "Fake commit for $DATE"

  GIT_AUTHOR_DATE="$DATE" \
  GIT_COMMITTER_DATE="$DATE" \
  git commit --allow-empty --author="$AUTHOR_NAME <$AUTHOR_EMAIL>" -m "Fake commit for $DATE"
done

git push origin main

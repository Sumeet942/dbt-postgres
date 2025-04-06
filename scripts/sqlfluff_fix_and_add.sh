#!/bin/bash

# Loop through each passed file
for file in "$@"
do
  echo "Fixing $file"
  sqlfluff fix "$file" --dialect postgres --force
  git add "$file"
done
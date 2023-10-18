#!/usr/bin/env bash

echo "# Ultrawide Wallpapers" > README.md

count=1
for file in wallpapers/*.{jpg,jpeg,png}; do
  if [[ -f "$file" ]]; then
    printf "## %s\n" "$file" >> README.md
    echo "![Image $count]($file)" >> README.md
    ((count++))
  fi
done

total_count=$((count - 1))
echo "Total Images: $total_count" >> README.md

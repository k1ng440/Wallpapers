#!/usr/bin/env bash

count=1
temp=".tmp"
mkdir -p "$temp"

for file in wallpapers/*.{jpg,jpeg,png}; do
  if [[ -f "$file" ]]; then
    extension="${file##*.}"
    new_name=$(printf "%03d.%s" "$count" "$extension")
    mv "$file" "$temp/$new_name"
    ((count++))
  fi
done

mv "$temp"/* wallpapers/
rm -d "$temp"

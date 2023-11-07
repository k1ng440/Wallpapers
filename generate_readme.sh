#!/usr/bin/env bash

echo "# Ultrawide Wallpapers" > README.md

count=1
find wallpapers -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -print0 | sort -z | while read -d $'\0' file
do
    printf "## %s\n" "$file" >> README.md
    echo "![Image $count]($file)" >> README.md
    count=$((count+1))
done

cat <<EOM >> README.md

## Disclaimer: 
Please note that the wallpapers provided in this collection are intended for personal use only. They are not owned by me or affiliated with me. 
If you are the copyright owner of any wallpaper included in this collection and would like it to be removed, please contact me directly through email at contact@iampavel.dev 
or create an issue in this repository. I will promptly address your request and remove the wallpaper in question.
Your understanding and cooperation are greatly appreciated, and I am committed to respecting the rights of content owners.
EOM

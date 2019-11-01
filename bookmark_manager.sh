#!/bin/bash

find ~/Documents/workspace/ -name .git  -execdir  pwd  >  /tmp/gitBookmarks \;

input="/tmp/gitBookmarks"
while IFS= read -r line
do
  part1=`dirname "$line"`
  part2=`basename "$line"`
  echo "file://$line $part2" >> ~/.config/gtk-3.0/bookmarks
done < "$input"
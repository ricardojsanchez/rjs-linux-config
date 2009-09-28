#!/bin/bash

bigdirs=`du -s $HOME/* | sort -rn | cut -f2 | head -5`
echo "The five biggest directories in $HOME are:"
echo $bigdirs

for dirname in $bigdirs; do
  echo ""
  echo Big directory: $dirname
  echo Four largest files in that directory are:
  find $dirname -type f -printf "%k %p\n" | sort -rn | head -4
done
exit 0

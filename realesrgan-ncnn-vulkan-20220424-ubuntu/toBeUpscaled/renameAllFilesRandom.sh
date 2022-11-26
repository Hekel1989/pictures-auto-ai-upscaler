#!/bin/bash    
for img in *.jpg; do
newname=$(head /dev/urandom | tr -dc a-z0-9 | head -c 8)
mv "$img" "$newname".jpg
done

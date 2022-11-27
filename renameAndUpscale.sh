#!/bin/bash    

#Variables
dir=$(pwd)
FILES=$dir/toBeUpscaled/*

#Rename all files randomly
for img in *.jpg; do
newname=$(head /dev/urandom | tr -dc a-z0-9 | head -c 8)
mv "$img" "$newname".jpg
done


#Upscale all pictures in folder
for f in $FILES
do
  echo "Processing $f"
  # take action on each file. $f stores current file name
  ./realesrgan-ncnn-vulkan -i $f -o $f"-UPSCALED".jpg -n realesrgan-x4plus-anime
  cat "$f"
done


#Unused Code
#FILES="/home/hekel/Downloads/realesrgan-ncnn-vulkan-20220424-ubuntu/*"
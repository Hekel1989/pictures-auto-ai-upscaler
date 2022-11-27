#!/bin/bash
# NOTE : Quote it else use array to avoid problems #

dir=$(pwd)
FILES=$dir/toBeUpscaled/*
#FILES="/home/hekel/Downloads/realesrgan-ncnn-vulkan-20220424-ubuntu/*"
for f in $FILES
do
  echo "Processing $f"
  # take action on each file. $f stores current file name
  ./realesrgan-ncnn-vulkan -i $f -o $f"-UPSCALED".jpg -n realesrgan-x4plus-anime
  cat "$f"
done
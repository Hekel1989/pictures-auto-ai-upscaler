#Convert all PNG files to JPG whilst mantaining the original quality
mogrify -format jpg -quality 100 *.png

#Delete all original PNG files
find . -name "*.PNG" -type f -delete

#Resize all JPG files to 2160p, with a max size of 3mb, and an output of 4K_originalName
for file in *.jpg; 
    do convert $file -resize 3840x2160 -define jpeg:extent=3000kb 4K_$file;
done

#Delete all original files(but NOT the scripts)
find . -not -name "4K_*" -type f ! -name "*.sh" -delete


#for f in *.png; do convert "$f" -resize 3840x2160 -quality 95 4K-"$f"; done
#for f in *.jpg; do convert "$f" -resize 3840x2160 -quality 95 4K-"$f"; done


#for f in *.jpg; do convert "$f" -resize 3840x2160 -quality 95 4K-"$f".jpg; done
#convert -resize 3840x2160 -define jpeg:extent=3000kb $i $i_4K
#--define jpeg:extent=3000kb

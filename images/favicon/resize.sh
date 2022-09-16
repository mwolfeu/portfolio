#! /bin/bash

# https://favicon.io/favicon-generator/
for n in `ls *.png`
do
    size=`echo $n | sed 's/[a-w\.\-]//g'`
    echo $size
    
    if test -z "$size" 
    then
      cp apple-touch-icon.png $n
    else
      convert apple-touch-icon.png -resize $size $n
    fi
done

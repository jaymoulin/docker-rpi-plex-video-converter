#!/bin/bash

for f in **/*.avi; do
    echo "Converting $f"
    avconv -i "$f" -strict experimental -c:v libx264 "${f%.avi}.mp4" && rm "$f"
done 
echo "Done"

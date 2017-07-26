#!/bin/bash

for f in **/*.avi; do
    echo "Converting $f"
    avconv -i "$f" -c copy "${f%.avi}.mp4" && rm "$f"
done 
echo "Done"

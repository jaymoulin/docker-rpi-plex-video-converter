#!/bin/bash

trap 'exit 2' TERM INT

shopt -s globstar
shopt -s nullglob
for f in **/*.{avi,ogm,wmv,AVI,OGM,WMV,flv,FLV,mkv,MKV,mov,MOV,m4v,M4V}; do
    printf '\033[1;34;40m'
    echo "Converting $f"
    printf '\033[0m'
    ffmpeg -i "$f" -strict experimental -c:v libx265 "${f:0:-4}.mp4" && rm "$f"
done
for f in **/*.{divx,DIVX,webm,WEBM}; do
    printf '\033[1;34;40m'
    echo "Converting $f"
    printf '\033[0m'
    ffmpeg -i "$f" -strict experimental -c:v libx265 "${f:0:-5}.mp4" && rm "$f"
done
if [[ ! -z "$compress" ]]; then
    for f in **/*.{mp4,MP4}; do
        printf '\033[1;34;40m'
        echo "Compressing $f"
        printf '\033[0m'
        ffmpeg -i "$f" -vcodec libx265 -crf $compress "${f:0:-4}-compressed.mp4" && rm "$f"
    done
fi

Raspberry PI - Plex Video converter - Docker Image
==================================================

This image purpose is to convert unsupported video files by Plex for Raspberry to mp4 wich is supported.

Just run the container to convert all avi files recursively with your Raspberry Pi though the `media` volume :

```
docker run --rm -t -v /path/to/your/media/folder:/media jaymoulin/rpi-plex-video-converter
```

This image also exists for PC so your images can be converted quicker using a more powerful machine

```
docker run --rm -t -v /path/to/your/media/folder:/media jaymoulin/rpi-plex-video-converter:pc
```

Raspberry PI - Avi to mp4 converter - Docker Image
==================================================

Just run the container to convert all avi files recursively with your Raspberry Pi though the `media` volume :

```
docker run --rm -t -v /path/to/your/media/folder:/media jaymoulin/rpi-avi-converter
```

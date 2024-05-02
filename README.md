> [!CAUTION]
> As-of 2021, this product does not have a free support team anymore. If you want this product to be maintained, please support my work.

> [!NOTE]
> (This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many desirable features yet to be added.)

> [!TIP]
> THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

![logo](https://github.com/jaymoulin/docker-rpi-plex-video-converter/raw/master/logo.png)

Raspberry PI - Plex Video converter - Docker Image
==================================================
[![latest release](https://img.shields.io/github/release/jaymoulin/docker-rpi-plex-video-converter.svg "latest release")](http://github.com/jaymoulin/docker-rpi-plex-video-converter/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/jaymoulin/rpi-plex-video-converter.svg)](https://hub.docker.com/r/jaymoulin/rpi-plex-video-converter/)
[![Docker stars](https://img.shields.io/docker/stars/jaymoulin/rpi-plex-video-converter.svg)](https://hub.docker.com/r/jaymoulin/rpi-plex-video-converter/)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/jaymoulin)
[![Buy me a coffee](https://ko-fi.com/img/githubbutton_sm.svg "Buy me a coffee")](https://www.ko-fi.com/jaymoulin)

This image purpose is to convert unsupported video files by Plex for Raspberry to mp4 which is supported.

Just run the container to convert all videos files to convert recursively on your `media` volume :
Please note that this package is also hosted on Github Container Registry, just add `ghcr.io/` before the image name (`docker pull ghcr.io/jaymoulin/rpi-plex-video-converter` instead of `jaymoulin/rpi-plex-video-converter`)

> [!NOTE]
> 0.7.0 update : you can add a `compress=28` environment variable to compress all .mp4 files in the media path. The higher the number, the less the compression

> [!NOTE]
> 0.8.0 update : you can add a `fallback=1` environment variable to use libx264 codec instead of libx265.

```
docker run --rm -t -v /path/to/your/media/folder:/media jaymoulin/rpi-plex-video-converter
```
This image is multiarch, which means it works either on your PC or Raspberry PI

Appendixes
---

### Install Docker

If you don't have Docker installed yet, you can do it easily in one line using this command
 
```
curl -sSL "https://gist.githubusercontent.com/jaymoulin/e749a189511cd965f45919f2f99e45f3/raw/0e650b38fde684c4ac534b254099d6d5543375f1/ARM%2520(Raspberry%2520PI)%2520Docker%2520Install" | sudo sh && sudo usermod -aG docker $USER
```

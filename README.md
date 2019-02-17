![logo](https://github.com/jaymoulin/docker-rpi-plex-video-converter/raw/master/logo.png)

Raspberry PI - Plex Video converter - Docker Image
==================================================
[![latest release](https://img.shields.io/github/release/jaymoulin/docker-rpi-plex-video-converter.svg "latest release")](http://github.com/jaymoulin/docker-rpi-plex-video-converter/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/jaymoulin/rpi-plex-video-converter.svg)](https://hub.docker.com/r/jaymoulin/rpi-plex-video-converter/)
[![Docker stars](https://img.shields.io/docker/stars/jaymoulin/rpi-plex-video-converter.svg)](https://hub.docker.com/r/jaymoulin/rpi-plex-video-converter/)
[![Bitcoin donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/btc.png "Bitcoin donation")](https://m.freewallet.org/id/374ad82e/btc)
[![Litecoin donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ltc.png "Litecoin donation")](https://m.freewallet.org/id/374ad82e/ltc)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/3Yu8ajd7W)

This image purpose is to convert unsupported video files by Plex for Raspberry to mp4 which is supported.

Just run the container to convert all videos files to convert recursively on your `media` volume :

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

FROM debian:stable-slim

ARG VERSION
ARG TARGETPLATFORM
LABEL maintainer="Jay MOULIN <https://jaymoulin.me>"

RUN apt-get update && apt-get install ffmpeg -y --force-yes

ADD ./convert.sh /usr/bin/convert.sh

VOLUME /media

CMD ["convert.sh"]

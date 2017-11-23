FROM debian:stable-slim as builder

COPY qemu-*-static /usr/bin/

FROM builder

LABEL maintainer="Jay MOULIN <jaymoulin@gmail.com> <https://twitter.com/MoulinJay>"

RUN apt-get update && apt-get install libav-tools -y --force-yes

ADD ./convert.sh /usr/bin/convert.sh

VOLUME /media

CMD ["convert.sh"]

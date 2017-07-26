FROM sdhibit/rpi-raspbian

MAINTAINER Jay MOULIN <jaymoulin@gmail.com>

RUN apt-get update && apt-get install libav-tools -y --force-yes

ADD convert.sh /usr/bin/convert.sh
	
VOLUME /media

CMD ["convert.sh"]

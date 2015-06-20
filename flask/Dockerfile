FROM debian:jessie

MAINTAINER Michael McHolm

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
python3-pip \
python3-dev

RUN pip3 install uwsgi flask sqlalchemy

RUN useradd -d /opt/app uwsgi

USER uwsgi
WORKDIR /opt/app
VOLUME ['/opt/app']
EXPOSE 8080

ENTRYPOINT [ "/usr/bin/python3","run.py" ]

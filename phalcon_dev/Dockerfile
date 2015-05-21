FROM debian:jessie
MAINTAINER Michael McHolm

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
git-core \
php5-dev \
re2c \
build-essential

RUN cd /usr/src \
&& git clone --depth=1 git://github.com/phalcon/cphalcon.git \
&& cd cphalcon/build \
&& ./install \

FROM ubuntu:20.04
MAINTAINER Michael McHolm

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
apache2 \
libapache2-mod-php7.4 \
php7.4 \
php7.4-cli \
php-redis \
php7.4-mysql \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

COPY apache_site.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite.load \
&& mkdir -p /opt/app
COPY php7_apache.ini /etc/php/7.4/apache2/php.ini

EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND","-e","info"]

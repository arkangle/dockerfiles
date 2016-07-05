FROM ubuntu:16.04
MAINTAINER Michael McHolm

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
apache2 \
libapache2-mod-php7.0 \
php7.0 \
php7.0-cli \
php-redis \
php7.0-mysql \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

COPY apache_site.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite.load \
&& mkdir -p /opt/app
COPY php7_apache.ini /etc/php/7.0/apache2/php.ini
COPY ./www /opt/app/www

EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND","-e","info"]

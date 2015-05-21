FROM debian:jessie
MAINTAINER Michael McHolm

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
apache2 \
libapache2-mod-php5 \
php5 \
php5-cli \
php5-mysql

COPY apache_site.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite.load \
&& mkdir -p /opt/app/www

EXPOSE 80

VOLUME ["/opt/app"]
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND","-e","info"]

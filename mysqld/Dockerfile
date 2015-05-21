From debian:jessie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
mysql-server \
less
COPY my.cnf /etc/mysql/my.cnf
COPY inputrc /etc/inputrc
VOLUME ["/var/lib/mysql"]
CMD ["/usr/bin/mysqld_safe"]

FROM debian:jessie

MAINTAINER Michael McHolm
ENV VERSION 9.4
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
postgresql-$VERSION

RUN  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/$VERSION/main/pg_hba.conf \
&& echo "listen_addresses='*'" >> /etc/postgresql/$VERSION/main/postgresql.conf \
&& echo "/usr/lib/postgresql/$VERSION/bin/postgres -D /var/lib/postgresql/$VERSION/main -c config_file=/etc/postgresql/$VERSION/main/postgresql.conf" > /usr/local/bin/postgres \
&& chmod 755 /usr/local/bin/postgres

USER postgres
RUN mkdir /var/run/postgresql/$VERSION-main.pg_stat_tmp

VOLUME  ["/var/lib/postgresql"]

CMD /usr/local/bin/postgres

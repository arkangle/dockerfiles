From debian:jessie

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
mongodb \
&& rm -rf /var/lib/apt/lists/*
RUN mkdir -p /data/db \
&& chown -R mongodb.mongodb /data/db

VOLUME ["/data/db"]
EXPOSE 27017

COPY mongodb.conf /etc/mongodb.conf
USER mongodb

CMD ["/usr/bin/mongod"]

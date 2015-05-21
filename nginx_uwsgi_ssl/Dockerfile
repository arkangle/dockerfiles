FROM debian:jessie
MAINTAINER Michael McHolm
ENV UWSGI_PORT 8080

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
nginx \
ca-certificates

EXPOSE 443 80

COPY nginx.default /etc/nginx/sites-enabled/default
COPY server.crt /etc/nginx/ssl/server.crt
COPY server.key /etc/nginx/ssl/server.key
RUN sed -i "s/UWSGI_PORT/$UWSGI_PORT/" /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]

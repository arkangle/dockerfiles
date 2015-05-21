FROM debian:jessie

MAINTAINER Michael McHolm
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
nginx \
ca-certificates

EXPOSE 443 80

COPY nginx.default /etc/nginx/sites-enabled/default
VOLUME ["/etc/nginx/ssl"]

CMD ["nginx", "-g", "daemon off;"]

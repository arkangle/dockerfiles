FROM debian:jessie

MAINTAINER Michael McHolm
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
nginx \
ca-certificates

EXPOSE 443 80

COPY nginx.default /etc/nginx/sites-enabled/default
COPY server.crt /etc/nginx/ssl/server.crt
COPY server.key /etc/nginx/ssl/server.key

CMD ["nginx", "-g", "daemon off;"]

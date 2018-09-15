FROM python:3-alpine3.7

RUN apk add --no-cache --virtual .certbot-deps \
libffi \
libssl1.0 \
openssl \
ca-certificates \
jq \
&& apk add --no-cache --virtual .build-deps \
gcc \
linux-headers \
openssl-dev \
musl-dev \
libffi-dev \
binutils \
&& python3 -m pip install certbot \
&& apk del .build-deps

COPY conf /certbot/nginx/conf.tmpl
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]

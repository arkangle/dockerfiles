FROM alpine
RUN apk add --no-cache \
bind-tools \
curl \
vim \
bash \
&& apk cache clean
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
